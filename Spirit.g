grammar Spirit;

options { language = Ruby; }

@header{

  #TODO
  #Herencia
  #Serializar ClassSymbol, MethodSymbol y VariableSymbol
  
  #NOTAS
  #En la VM la primera variable local de un metodo es igual al indicado en el gsb (self)

  require 'json'
    
    
  class Hash
    def as_json
      v = {}
      self.each do |key, value|
        v[key] = value.as_json
      end
      return v
    end
  end
  
  def Array
    def as_json
      v = []
      self.each do |value|
        v << value.as_json
      end
      return v
    end
  end

  class Stack < Array
    def pop
      delete_at(self.size - 1)
    end
  end
  
  class Integer
    def temporal?
      if(self >= 400 and self <= 499) then
        return true
      end
      return false
    end
    
     def constant?
      if(self >= 300 and self <= 399) then
        return true
      end
      return false
    end
  end
  
  class String
    def temporal?
      return self.to_i.temporal?
    end
    
    def constant?
      return self.to_i.constant?
    end
  end
  
  
  #Contiene nombre, tipo y direccion de una variable
  class VariableSymbol
    attr_accessor :name, :type, :address, :dim
    
    def as_json
      {
        :name => name,
        :type => type,
        :address => address,
        :dim => dim
      }
    end
    
    def initialize(n, t, d = 1)
      @name = n
      @type = t
      @address = nil
      @dim = d
    end
    
  end
  
  #Contiene nombre, hash de variables de instancia, hash de metodos y super clase
  class ClassSymbol
    attr_accessor :name, :instance_methods, :instance_variables
    
    def as_json
      {
        :name => name,
        :instance_variables => instance_variables.as_json,
        :instance_methods => instance_methods.as_json,
      }
    end
    
    
    START_ADDRESS = 200
    FINISH_ADDRESS = 299
    
    def initialize(n, p = nil)
      @name = n #String
      @instance_variables = Hash.new #VariableSymbol
      @instance_methods = Hash.new #MethodSymbol
      @next_address = START_ADDRESS
    end
    
    
    def set_to_instance_variables(key, vs)
      vs.address = @next_address
      @next_address += vs.dim
      if(@instance_variables[key].nil?)
        @instance_variables[key] = vs
      else
        raise "Variable '#{key}' was previously declared"
      end
    end
    
    
  end
  
  #Contiene tipo de retorno, lista de variables locales, lista de variables de parametro, 
  class MethodSymbol
    attr_accessor :name, :return_type, :parameter_variables, :container_class, :local_variables, :starting_fourfold
    attr_accessor :parameter_list
    
    
    def as_json
      {
        :name => name,
        :return_type => return_type,
        :starting_fourfould => starting_fourfold,
        :local_variables => local_variables.as_json
      }
    end
    
    START_ADDRESS = 100
    FINISH_ADDRESS = 199
    
    
    def initialize(n, r = nil, c = nil)
      @name = n #String
      @return_type = r #ClassSymbol
      @container_class = c #ClassSymbol
      @local_variables = Hash.new #VariableSymbol
      @parameter_variables = Hash.new #VariableSymbol
      @parameter_list = Array.new #VariableSymbol
      @next_variable_address = START_ADDRESS
    end
    
            
    
    def set_to_local_variables(key, vs)
      vs.address = @next_variable_address
      @next_variable_address += vs.dim
      if(@local_variables[key].nil?)
        @local_variables[key] = vs
      else
        raise "Variable '#{key}' was previously declared"
      end
    end
    
    
    def set_to_parameter_variables(key, vs)
      if(@parameter_variables[key].nil?)
        @parameter_variables[key] = vs
        @parameter_list << vs
        set_to_local_variables(key, vs)
      else
        raise "Parameter '#{key}' was previously declared"
      end
    end
    
    def parameter_count
      parameter_variables.count
    end
    
    def variable_count
      local_variables.count
    end
    
  end

}

@parser::init{

  @classes = {} #ClassSymbol
  
  # Creamos clases ficticias de los primitivos
  @classes['null'] = ClassSymbol.new('null')
  @classes['int'] = ClassSymbol.new('int')
  @classes['char'] = ClassSymbol.new('char')
  @classes['float'] = ClassSymbol.new('float')
  @classes['boolean'] = ClassSymbol.new('boolean')
  @classes['void'] = ClassSymbol.new('void')
  @classes['intarray'] = ClassSymbol.new('intarray')
  @classes['chararray'] = ClassSymbol.new('chararray')
  @classes['floatarray'] = ClassSymbol.new('floatarray')
  @classes['booleanarray'] = ClassSymbol.new('booleanarray')
  @classes['voidarray'] = ClassSymbol.new('voidarray')
  @current_class = nil
  @current_method = nil
  @current_instance = nil
  
  def validate_existing_class(cl)
    if(@classes[cl].nil?)
      raise "Class #{cl} is non existent (inside #{@current_class.name}::#{@current_method.name if @current_method})"
	  end
  end

  #Creamos direcciones temporales
  @avail = []
  create_avail = Proc.new {
    100.times do |i|
      @avail << "#{i + 400}"
    end
  }
  create_avail.call()
  
  def get_avail
    return @avail.delete_at(0)
  end
  
  def free_avail(a)
    a = a.to_s.sub(/^\(/, '').sub(/\)$/, '')
    if(a.temporal?) then
      @avail.insert(0,a)
    end
  end
  
  #Creamos direcciones de constantes
  @avail_const = []
  create_avail_const = Proc.new {
    100.times do |i|
      @avail_const << "#{i + 300}"
    end
  }
  create_avail_const.call()
  
  def get_avail_const
    return @avail_const.delete_at(0)
  end
  
  def free_avail_const(a)
    if(a.constant?) then
      @avail_const.insert(0,a)
    end
  end
  
  @stack_operators = Stack.new
  @stack_operands = Stack.new
  @stack_types = Stack.new
  @stack_jumps = Stack.new
  @stack_dimensioned = Stack.new
  @fourfold = Stack.new
  @cont = 1
  
  def resulting_type(type_a, type_b, operator)
    
    case
    when operator == '*' || operator == '+' || operator == '-'
      case
      when type_a == 'int' && type_b == 'int'
        return 'int'
      when type_a == 'int' && type_b == 'float'
        return 'float'
      when type_a == 'float' && type_b == 'int'
        return 'float'
      when type_a == 'float' && type_b == 'float'
        return 'float'
      else
        raise "Cant apply #{operator} to #{type_a} and #{type_b}"
      end
    when operator == '/'
      if((type_a == 'int' || type_a == 'float') && (type_b == 'int' || type_b == 'float'))
        return 'float'
      else
        raise "Cant apply #{operator} to #{type_a} and #{type_b}"
      end
    when operator == 'mod'
      if(type_a == 'int' && type_b == 'int')
        return 'int'
      else
        raise "Cant apply #{operator} to #{type_a} and #{type_b}"
      end
    when operator == '&&' || operator == '||'
      if(type_a == 'boolean')
        if(type_b == 'boolean' || type_b == 'null' )
          return 'boolean'
        end
      elsif(type_b == 'boolean')
        if(type_a == 'boolean' || type_a == 'null' )
          return 'boolean'
        end
      else
        raise "Cant apply #{operator} to #{type_a} and #{type_b}"
      end
    when (operator == '==' ||  operator == '!=')
      if(type_a != type_b && type_a != 'null' && type_b != 'null')
        raise "Cant apply #{operator} to #{type_a} and #{type_b}"
      else
        return 'boolean'
      end
    when (operator == '<' || operator == '>' || operator == '<=' || operator == '>=')
      if((type_a == 'int' || type_a == 'float') && (type_b == 'int' || type_b == 'float'))
        if(type_a != type_b)
          raise "Cant apply #{operator} to #{type_a} and #{type_b}"
        else
          return 'boolean'
        end
      else
        raise "Cant apply #{operator} to #{type_a} and #{type_b}"
      end
    end
  end
  
  
  def fill(index,value)
    #Es menos uno pues hay un corrimiento de tuplas cuando insertamos Starting Fourfold Main
    @fourfold[index - 1][3] = value
  end
  
  def generate(oper,a,b,c)
    @fourfold << [oper,a,b,c]
    @cont += 1    
  end
  
  def print_fourfold
    str = ""
		@fourfold.size.times do |i|
		  # \$stdout.print "#{i}) "
		  @fourfold[i].size.times do |j|
		    str += "#{@fourfold[i][j]},"
		  end
		  str += "\n"
		end
		return str
  end
  
  def print_classes
    @classes.each do |key, value|
      puts value.as_json
    end
  end
  
  
  def show_output
    File.open("myobj", 'w') {|f| f.write(print_fourfold) }
    #CLASSES
      #INSTANCE_VARIABLES
      #INSTANCE_METHODS
        #LOCAL_VARIABLES
    #print_classes
  end
}

@lexer::init{
}										

goal	
	: 	classdeclaration* 
	    mainclass 
	    {
	      @fourfold.insert(0, ['gto',nil,nil, @classes['Main'].instance_methods['main'].starting_fourfold])
	      show_output
	    };

mainclass 
	:	'class' 
	  'Main' 
	  {
	    @classes['Main'] = ClassSymbol.new('Main')
	    @current_class = @classes['Main']
	  } 
	  '{' 
	  vardeclaration*
	  assignment*
	  methoddeclaration* 
	  methodmain 
	  '}'
	  {
	    @current_class = nil
	  };
	
methodmain
	:	'method' 
	  'void' 
	  'main' 
	  { 
	    @current_class.instance_methods['main'] = MethodSymbol.new('main', 'void', @current_class)
	    @current_method = @current_class.instance_methods['main']
	    
	    #Creamos una instancia de main para evitarnos los metodos estaticos
	    @current_method.set_to_local_variables('_m',VariableSymbol.new('_m', 'Main'))
	    @current_instance = @current_method.local_variables.values.first
	    
	    @current_method.starting_fourfold = @cont
	  }
	  '(' ')' '{' vardeclaration* statement* '}'
	  {
	    generate('hlt',nil,nil,nil)
	    @current_method = nil
	  };
	
classdeclaration 
	: 	'class'
	    IDENTIFIER
	    {
	      @classes[$IDENTIFIER.text] = ClassSymbol.new($IDENTIFIER.text)
	      @current_class = @classes[$IDENTIFIER.text]
	    }
	    inherits?  
	    '{'
	    vardeclaration*
	    assignment* 
	    methoddeclaration*
	    '}'
	    {
	      @current_class = nil
	    }
	    ;
	
inherits
	:	'extends' IDENTIFIER
	{
	}
	;

vardeclaration
	:	
	  t = type IDENTIFIER
	  {
	    validate_existing_class($t.type_a)
	    if(not @current_method.nil?)
	      @current_method.set_to_local_variables($IDENTIFIER.text,VariableSymbol.new($IDENTIFIER.text, $t.type_a))
	    else
	      @current_class.set_to_instance_variables($IDENTIFIER.text, VariableSymbol.new($IDENTIFIER.text, $t.type_a))
	    end
	  }
	  ';'
	|
	  t = primitivetype '[' INTEGER ']' IDENTIFIER
    {
      variable = VariableSymbol.new($IDENTIFIER.text, $t.type_a, $INTEGER.text.to_i)  
      if(not @current_method.nil?)
        @current_method.set_to_local_variables($IDENTIFIER.text, variable)
      else
        @current_class.set_to_instance_variables($IDENTIFIER.text, variable)
      end
      generate('ary', variable.type, variable.dim , variable.address )
    }  
	  ';'
	;


methoddeclaration 
	: 	'method' 
	    (t = primitivetype | t = classtype)
	    IDENTIFIER
	    { 
	      validate_existing_class($t.type_a)
	      @current_class.instance_methods[$IDENTIFIER.text] = MethodSymbol.new($IDENTIFIER.text, $t.type_a, @current_class)
	      @current_method = @current_class.instance_methods[$IDENTIFIER.text]
	      
	      #Creamos una instancia en el metodo para saber a que instancia pertenece
	      @current_method.set_to_local_variables('_ci',VariableSymbol.new('_ci', @current_class.name))
	      @current_instance = @current_method.local_variables.values.first
	      
	      @current_method.starting_fourfold = @cont
	    }
	    '('
	    parameters?
	    ')' 
	    '{' 
	    vardeclaration* 
	    statement* 
	    '}'
	    {
	      if(@current_method.return_type == 'void')
	        generate('ret', nil, nil, nil)
	        @is_returning = true
	      end
	      unless(@is_returning)
	        raise "Method #{@current_class.name}::#{@current_method.name} should return #{@current_method.return_type}"
	      end
	      @is_returning = nil
	      @current_method = nil
	    }
	    ;
	
	
parameters
	:  parameter (',' parameter)*;
	
parameter
  :  t = type
     IDENTIFIER
     {
       @current_method.set_to_parameter_variables($IDENTIFIER.text,VariableSymbol.new($IDENTIFIER.text, $t.type_a))
     };

primitivetype
	returns [type_a]:	
	t = ('int' | 'char' | 'float' | 'boolean' | 'void') 
	{
	  $type_a = $t.text
	};
	

	
classtype
  returns [type_a]:
	t = IDENTIFIER 
	{
	  $type_a = $t.text
	}
	;

type 
	returns [type_a]: 	
	(t = primitivetype | t = classtype) 
	{
	  $type_a = $t.type_a
	}
	;

statement
	:	assignment  | conditional | invocation ';' | loop | print | println | returnstmt | ';';
	
assignment 
	:	lhsassignment '=' rhsassignment ';';
	
lhsassignment
	: 	arrayaccess
		| IDENTIFIER '.' IDENTIFIER	//objeto.atributo
		| 'this' '.' IDENTIFIER
		  {
		    if( not @current_class.instance_variables[$IDENTIFIER.text].nil?)
			  	@stack_operands.push(@current_class.instance_variables[$IDENTIFIER.text].address)
			  	@stack_types.push(@current_class.instance_variables[$IDENTIFIER.text].type)
			  else
			    raise "Variable #{$IDENTIFIER.text} not declared as instance of #{@current_class.name}"
			  end
		  }
		| IDENTIFIER 
	    {
	      # Verificar que exista en algun scope y meterlo en pila de operandos
			  if(not @current_method.nil?)
			    if(not @current_method.local_variables[$IDENTIFIER.text].nil?)
			      @stack_operands.push(@current_method.local_variables[$IDENTIFIER.text].address)
			      @stack_types.push(@current_method.local_variables[$IDENTIFIER.text].type)
			    elsif( not @current_class.instance_variables[$IDENTIFIER.text].nil?)
			      @stack_operands.push(@current_class.instance_variables[$IDENTIFIER.text].address)
			      @stack_types.push(@current_class.instance_variables[$IDENTIFIER.text].type)
			    else
			      raise "Variable #{$IDENTIFIER.text} not declared neither in #{@current_class.name} or its method #{@current_method.name}"
			    end
			  else
			  	if( not @current_class.instance_variables[$IDENTIFIER.text].nil?)
			  	  @stack_operands.push(@current_class.instance_variables[$IDENTIFIER.text].address)
			  	  @stack_types.push(@current_class.instance_variables[$IDENTIFIER.text].type)
			    else
			      raise "Variable #{$IDENTIFIER.text} not declared as instance of #{@current_class.name}"
			    end
			  end
	    }
		;
		
rhsassignment
	:	    expression 
        {
          rh = @stack_operands.pop
          rh_t = @stack_types.pop
          lh = @stack_operands.pop
          lh_t = @stack_types.pop
          if(lh_t != rh_t && rh_t != 'null')
            raise "Tried to assign #{rh_t} to #{lh_t} in #{@current_class.name}::#{@current_method.name if @current_method}"
          end
          generate('=', rh, nil ,lh )
          free_avail(rh)
          free_avail_const(rh)
          free_avail(lh)
          free_avail_const(lh)
        }
      | 'new'
        IDENTIFIER
        '('')'
        {
          rh_t = $IDENTIFIER.text
          lh = @stack_operands.pop
          lh_t = @stack_types.pop
          if(lh_t != rh_t && rh_t != 'null')
            raise "Tried to assign #{rh_t} to #{lh_t} in #{@current_class.name}::#{@current_method.name if @current_method}"
          end
          generate('new', rh_t, nil ,lh )
        }
	  ;
	
returnstmt
	:	'return' returnsomething? ';';
	   
	   
returnsomething
  :
    expression
    {
    	rt = @stack_operands.pop
      rt_t = @stack_types.pop
      if(rt_t != @current_method.return_type)
        raise "Invalid return type #{rt_t} in the #{@current_method.return_type} type method #{@current_class.name}::#{@current_method.name}"
      end
      generate('ret', nil, nil ,rt )
      @is_returning = true
      free_avail(rt)
      free_avail_const(rt)
      
    }
  ;
	
conditional 
	:	 'if' '(' expression ')'
	   {
	     aux = @stack_types.pop
	     if (aux != 'boolean') then
	       raise "Expression inside if-statement is not boolean"
	     else
	       result = @stack_operands.pop
	       generate('gtf', result, nil, '_')
	       @stack_jumps.push(@cont - 1)
	     end
	   }
	   '{' statement* '}' 
	   ('else'
	   {
	     generate('gto', nil, nil, '_')
	     false_result = @stack_jumps.pop
	     fill(false_result, @cont)
	     @stack_jumps.push(@cont - 1)
	   }
	   '{' statement* '}' )?
	   {
	     fin = @stack_jumps.pop
	     fill(fin, @cont)
	   };
	
loop 
	: 	'while'
	    {
	      @stack_jumps.push(@cont)
	    }
	    '(' expression ')'
	    {
	      aux = @stack_types.pop
	      if(aux != 'boolean') then
	        raise "Expression inside while-statement is not boolean"
	      else
	        result = @stack_operands.pop
	        generate('gtf', result, nil, '_')
	        @stack_jumps.push(@cont - 1)
	      end
	    }
	    '{' statement* '}'
	    {
	      false_result = @stack_jumps.pop
	      return_result = @stack_jumps.pop
	      generate('gto', nil, nil, return_result)
	      fill(false_result, @cont)
	    };
	
print 
	: 	
	  'print' '(' expression
	  {
	    pr = @stack_operands.pop
      pr_t = @stack_types.pop
      generate('prt', nil, nil ,pr )
      free_avail(pr)
      free_avail_const(pr)
	  }	  
   ')' ';'
  ;
   
println
	: 	
	  'println' '(' expression
	  {
	    pr = @stack_operands.pop
      pr_t = @stack_types.pop
      generate('prl', nil, nil ,pr )
      free_avail(pr)
      free_avail_const(pr)
	  }	  
   ')' ';'
  ;

expression 
	: 	exp (COMPARITIONOPERATORS
	    { #Regla 8
	      @stack_operators.push($COMPARITIONOPERATORS.text)
	    }
	    exp
	    { #Regla 9
		    operator = @stack_operators.pop
		    operand_b = @stack_operands.pop
		    operand_a = @stack_operands.pop
		    result = get_avail
		    generate(operator, operand_a, operand_b, result)
		    free_avail(operand_a)
		    free_avail(operand_b)
		    free_avail_const(operand_a)
		    free_avail_const(operand_b)
		    @stack_operands.push(result)
		    @stack_types.push(resulting_type(@stack_types.pop, @stack_types.pop, operator))
	    }
	    )?;
	
exp
	: 	term (ADDITIONSUBSTRACTIONOPERATORS  
           { #Regla 2 GC
             @stack_operators.push($ADDITIONSUBSTRACTIONOPERATORS.text)
           }
	         term
         	 { #Regla 4 GC / VS
             if(@stack_operators.last == '+' or
                @stack_operators.last == '-' or
                @stack_operators.last == '||' ) then
               operator = @stack_operators.pop
               operand_b = @stack_operands.pop
               operand_a = @stack_operands.pop
               result = get_avail
               generate(operator, operand_a, operand_b, result)
               free_avail(operand_a)
               free_avail(operand_b)
               free_avail_const(operand_a)
               free_avail_const(operand_b)
               @stack_operands.push(result)
               @stack_types.push(resulting_type(@stack_types.pop, @stack_types.pop, operator))
             end
           }
	         )* ;
	
term
	: 	factor (MULTIPLICATIONDIVISIONOPERATORS
			       { #Regla 3 GC
		           @stack_operators.push($MULTIPLICATIONDIVISIONOPERATORS.text)
		         } 
	           factor
		         { #Regla 5 GC / VS
		           if(@stack_operators.last == '*' or
		              @stack_operators.last == '/' or
		              @stack_operators.last == '&&') then
		             operator = @stack_operators.pop
		             operand_b = @stack_operands.pop
		             operand_a = @stack_operands.pop
		             result = get_avail
		             generate(operator, operand_a, operand_b, result)
		             free_avail(operand_a)
		             free_avail(operand_b)
                 free_avail_const(operand_a)
                 free_avail_const(operand_b)
		             @stack_operands.push(result)
		             @stack_types.push(resulting_type(@stack_types.pop, @stack_types.pop, operator))
		           end
		         }
	           )*
  ;
	
factor
	:
		  'this' '.' IDENTIFIER
		  {
		    if( not @current_class.instance_variables[$IDENTIFIER.text].nil?)
			    @stack_operands.push(@current_class.instance_variables[$IDENTIFIER.text].address)
			    @stack_types.push(@current_class.instance_variables[$IDENTIFIER.text].type)
			  else
		      raise "Variable #{$IDENTIFIER.text} not declared as instance of #{@current_class.name}"
		    end
		  }
		|  IDENTIFIER
			{ #Regla 1 GC / Regla 1 VS
			  # Verificar que exista en algun scope y meterlo en pila de operandos
			  if(not @current_method.nil?)
			    if(not @current_method.local_variables[$IDENTIFIER.text].nil?)
			      @stack_operands.push(@current_method.local_variables[$IDENTIFIER.text].address)
			      @stack_types.push(@current_method.local_variables[$IDENTIFIER.text].type)
			    elsif( not @current_class.instance_variables[$IDENTIFIER.text].nil?)
			      @stack_operands.push(@current_class.instance_variables[$IDENTIFIER.text].address)
			      @stack_types.push(@current_class.instance_variables[$IDENTIFIER.text].type)
			    else
			      raise "Variable #{$IDENTIFIER.text} not declared neither in #{@current_class.name} or its method #{@current_method.name}"
			    end
			  else
			  	if( not @current_class.instance_variables[$IDENTIFIER.text].nil?)
			  	  @stack_operands.push(@current_class.instance_variables[$IDENTIFIER.text].address)
			  	  @stack_types.push(@current_class.instance_variables[$IDENTIFIER.text].type)
			    else
			      raise "Variable #{$IDENTIFIER.text} not declared as instance of #{@current_class.name}"
			    end
			  end
			}
		| INTEGER 
		  { #Regla 1 GC
		    dir_const = get_avail_const
		    generate('ict', $INTEGER.text, nil, dir_const )
				@stack_operands.push(dir_const)
				@stack_types.push('int')
		  }
		| FLOAT
		  { #Regla 1 GC
		    dir_const = get_avail_const
		    generate('fct', $FLOAT.text, nil, dir_const )
				@stack_operands.push(dir_const)
				@stack_types.push('float')
		  }
		| CHAR
		  { #Regla 1 GC
		    dir_const = get_avail_const
		    generate('cct', $CHAR.text, nil, dir_const )
				@stack_operands.push(dir_const)
				@stack_types.push('char')
		  }
		|
		  BOOL
		  {
		    dir_const = get_avail_const
		    generate('bct', $BOOL.text, nil, dir_const )
				@stack_operands.push(dir_const)
				@stack_types.push('boolean')
		  }
		  
		|
		  NULL
		  {
		    dir_const = get_avail_const
		    generate('nct', nil, nil, dir_const )
				@stack_operands.push(dir_const)
				@stack_types.push('null')
		  }
		| read
		| t = invocation
		  {
		  	dir_const = get_avail_const
		    generate('get', nil, nil, dir_const)
				@stack_operands.push(dir_const)
				@stack_types.push($t.type_a)
		  }
		| arrayaccess
		| 
		  '('
		  { #Regla 6 GC
		    @stack_operators.push('(')
		  }
		  expression 
		  ')'
		  { #Regla 7 GC
		    @stack_operators.pop

		  }
	;

arrayaccess
  :
	  IDENTIFIER
	  '['
	  expression
	  {
	    var = nil
	    if(not @current_method.nil?)
		    if(not @current_method.local_variables[$IDENTIFIER.text].nil?)
		      var = @current_method.local_variables[$IDENTIFIER.text]
		    elsif( not @current_class.instance_variables[$IDENTIFIER.text].nil?)
		      var = @current_class.instance_variables[$IDENTIFIER.text]
		    else
		      raise "Variable #{$IDENTIFIER.text} not declared neither in #{@current_class.name} or its method #{@current_method.name}"
		    end
			else
		  	if( not @current_class.instance_variables[$IDENTIFIER.text].nil?)
		  	  var = @current_class.instance_variables[$IDENTIFIER.text]
		    else
		      raise "Variable #{$IDENTIFIER.text} not declared as instance of #{@current_class.name}"
		    end
			end
			aux = @stack_operands.pop
			type = @stack_types.pop
			if(type != 'int')
			  raise "You can only access an address of an array with an integer expression "
			end
	    generate('ver', aux, nil, var.dim)
	    base = var.address
	    temp = get_avail
	    generate('jmp', base, aux, temp)
	    free_avail(aux)
	    @stack_operands.push("(#{temp})")
		  @stack_types.push(var.type)
	  }
	  ']'
	;
	
read  
  :	
    iread
    | fread
    | cread
    ;
      
iread
  :
    'iread' 
    '(' ')'
    {
      dir_const = get_avail_const
      generate('ird',nil,nil,dir_const)
		  @stack_operands.push(dir_const)
			@stack_types.push('int')
    }
  ;
  
fread
  :
    'fread' 
    '(' ')'
    {
      dir_const = get_avail_const
      generate('frd',nil,nil,dir_const)
		  @stack_operands.push(dir_const)
			@stack_types.push('float')
    }
  ;
  
cread
  :
    'cread' 
    '(' ')'
    {
      dir_const = get_avail_const
      generate('crd',nil,nil,dir_const)
		  @stack_operands.push(dir_const)
			@stack_types.push('char')
    }
  ;

invocation
	returns [type_a]:
  	 calledclassbyinstance
	   IDENTIFIER
	   {
	     if(@class_called.instance_methods[$IDENTIFIER.text].nil?)
	       raise "Method #{$IDENTIFIER.text} dont exist for instances of class #{@class_called.name} (inside #{@current_class.name}::#{@current_method.name if @current_method})"
	     end
	     @method_called = @class_called.instance_methods[$IDENTIFIER.text]
	     generate('era', nil, @class_called.name, @method_called.starting_fourfold)
	   }
	   '('
	   arguments?
	   ')'
	   {
	     generate('gsb', @instance_called.address, @class_called.name, @method_called.starting_fourfold)
	     $type_a = @method_called.return_type
	     @instance_called = nil;
	     @method_called = nil;
	     @class_called = nil;
	   }
	;
	
calledclassbyinstance
  : ((t = IDENTIFIER | t = 'this') '.')?
    {
      if($t.nil? || $t.text == 'this')
        @class_called = @current_class
        @instance_called = @current_instance
      else
        @instance_called = @current_method.local_variables[$IDENTIFIER.text] || @current_class.instance_variables[$IDENTIFIER.text]
        if(!@instance_called)
          raise "Variable '#{$IDENTIFIER.text}' not declared as instance of anything (inside #{@current_class.name}::#{@current_method.name if @current_method})"
        end
        @class_called = @classes[@instance_called.type] 
      end
    }
    ;
	
	
	
arguments
	:	expression
	  {
	    @argument_counter = 0
	    argument = @stack_operands.pop 
	    argument_type = @stack_types.pop
	    if(@method_called.parameter_count <= @argument_counter)
	      raise "There are more arguments than parameters in #{@class_called.name}::#{@method_called.name} (inside #{@current_class.name}::#{@current_method.name})"
	    end
	    parameter_type = @method_called.parameter_list[@argument_counter].type
	    if(argument_type != parameter_type)
	      raise "Argument '#{@argument_counter + 1}' in method #{@class_called.name}::#{@method_called.name} is not '#{parameter_type}' (inside #{@current_class.name}::#{@current_method.name})"
	    end
	    @argument_counter += 1
	    #Los prm empiezan en 1 pues el 0 le pertenece a self
	    generate('prm', nil,argument, @argument_counter)
	  }
	  (
	     ',' 
	     expression
	    {
	      argument = @stack_operands.pop 
	      argument_type = @stack_types.pop
  	    if(@method_called.parameter_count <= @argument_counter)
	        raise "There are more arguments than parameters in #{@class_called.name}::#{@method_called.name} (inside #{@current_class.name}::#{@current_method.name})"
	      end
	      parameter_type = @method_called.parameter_list[@argument_counter].type
	      if(argument_type != parameter_type)
	        raise "Argument '#{@argument_counter + 1}' in method #{@class_called.name}::#{@method_called.name} is not '#{parameter_type}' (inside #{@current_class.name}::#{@current_method.name})"
	      end
	      @argument_counter += 1
	      #Los prm empiezan en 1 pues el 0 le pertenece a self
	      generate('prm', nil,argument, @argument_counter)
	    }
	  )*
	  {
	    if(@method_called.parameter_count != @argument_counter)
	        raise "There are less arguments than parameters in #{@class_called.name}::#{@method_called.name} (inside #{@current_class.name}::#{@current_method.name})"
	    end
	    @argument_counter = 0;
	  }
	;

	
/* Tokens */
MULTIPLICATIONDIVISIONOPERATORS
	:  	 '*' | '/' | '&&';

ADDITIONSUBSTRACTIONOPERATORS
	:  	 '+'  | '-' | '||' ;
	
COMPARITIONOPERATORS
	:	'==' | '<' | '>' | '<=' | '>=' | '!=';
	
BOOL
	:	'true' | 'false';
	
NULL
  : 'null';
	
IDENTIFIER  
	:	('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*;
	
ARRAYIDENTIFIER  
	:	('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')* '['']';

INTEGER 
	:	'0'..'9'+;
	
CHAR:  '\'' ( ESC_SEQ | ~('\''|'\\') ) '\''
    ;

FLOAT
    :   ('0'..'9')+ '.' ('0'..'9')* EXPONENT?
    |   '.' ('0'..'9')+ EXPONENT?
    |   ('0'..'9')+ EXPONENT
    ;

WS  :   ( ' '
        | '\t'
        | '\r'
        | '\n'
        ) {$channel=HIDDEN;}
    ;

STRING
    :  '"' ( ESC_SEQ | ~('\\'|'"') )* '"'
    ;

fragment
EXPONENT : ('e'|'E') ('+'|'-')? ('0'..'9')+ ;

fragment
HEX_DIGIT : ('0'..'9'|'a'..'f'|'A'..'F') ;

fragment
ESC_SEQ
    :   '\\' ('b'|'t'|'n'|'f'|'r'|'\"'|'\''|'\\')
    |   UNICODE_ESC
    |   OCTAL_ESC
    ;

fragment
OCTAL_ESC
    :   '\\' ('0'..'3') ('0'..'7') ('0'..'7')
    |   '\\' ('0'..'7') ('0'..'7')
    |   '\\' ('0'..'7')
    ;

fragment
UNICODE_ESC
    :   '\\' 'u' HEX_DIGIT HEX_DIGIT HEX_DIGIT HEX_DIGIT
    ;

		
