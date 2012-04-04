grammar Spirit;

options { language = Ruby; }

@header{

  #TODO
  #Validar que una variable declarada tenga su respectiva clase declarada
  #Return retorna un tipo ya sea primitivo u objeto
  #Print y Read
  #Serializar ClassSymbol, MethodSymbol y VariableSymbol
  #Arreglos
  #En la VM la primera variable local de un metodo es igual al indicado en el gsb

  class Stack < Array
    def pop
      delete_at(self.size - 1)
    end
  end
  
  class Integer
    def temporal?
      if(self >= 4000 and self <= 4999) then
        return true
      end
      return false
    end
    
     def constant?
      if(self >= 3000 and self <= 3999) then
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
    attr_accessor :name, :type, :address
    
    def initialize(n, t)
      @name = n
      @type = t
      @address = nil
    end
    
  end
  
  #Contiene nombre, hash de variables de instancia, hash de metodos y super clase
  class ClassSymbol
    attr_accessor :name, :instance_methods, :parent_class, :instance_variables
    
    START_ADDRESS = 2000
    FINISH_ADDRESS = 2999
    
    def initialize(n, p = nil)
      @name = n #String
      @parent_class = p #ClassSymbol
      @instance_variables = Hash.new #VariableSymbol
      @instance_methods = Hash.new #MethodSymbol
      @next_address = START_ADDRESS
    end
    
    def set_to_instance_variables(key, vs)
      vs.address = @next_address
      @next_address += 1
      if(@instance_variables[key].nil?)
        @instance_variables[key] = vs
      else
        raise "Variable '#{key}' ya declarada"
      end
    end
    
  end
  
  #Contiene tipo de retorno, lista de variables locales, lista de variables de parametro, 
  class MethodSymbol
    attr_accessor :name, :return_type, :parameter_variables, :container_class, :local_variables, :starting_fourfold
    attr_accessor :parameter_list
    
    START_ADDRESS = 1000
    FINISH_ADDRESS = 1999
    
    
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
      @next_variable_address += 1
      if(@local_variables[key].nil?)
        @local_variables[key] = vs
      else
        raise "Variable '#{key}' ya declarada"
      end
    end
    
    def set_to_parameter_variables(key, vs)
      if(@parameter_variables[key].nil?)
        @parameter_variables[key] = vs
        @parameter_list << vs
        set_to_local_variables(key, vs)
      else
        raise "Parametro '#{key}' ya declarado"
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
  @classes['int'] = ClassSymbol.new('int')
  @classes['char'] = ClassSymbol.new('char')
  @classes['float'] = ClassSymbol.new('float')
  @classes['boolean'] = ClassSymbol.new('boolean')
  @current_class = nil
  @current_method = nil
  @current_instance = nil

  #Creamos direcciones temporales
  @avail = []
  create_avail = Proc.new {
    1000.times do |i|
      @avail << "#{i + 4000}"
    end
  }
  create_avail.call()
  
  def get_avail
    return @avail.delete_at(0)
  end
  
  def free_avail(a)
    if(a.temporal?) then
      @avail.insert(0,a)
    end
  end
  
  #Creamos direcciones de constantes
  @avail_const = []
  create_avail_const = Proc.new {
    1000.times do |i|
      @avail_const << "#{i + 3000}"
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
      if(type_a == 'boolean' && type_b == 'boolean')
        return 'boolean'
      else
        raise "Cant apply #{operator} to #{type_a} and #{type_b}"
      end
    when (operator == '==' ||  operator == '!=')
      if(type_a != type_b)
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
		@fourfold.size.times do |i|
		  \$stdout.print "#{i}) "
		  @fourfold[i].size.times do |j|
		    \$stdout.print "#{@fourfold[i][j]}, "
		  end
		  \$stdout.print "\n"
		end
  end
}

@lexer::init{
}										

goal	
	: 	classdeclaration* 
	    mainclass 
	    {
	      @fourfold.insert(0, ['gto',nil,nil, @classes['Main'].instance_methods['main'].starting_fourfold])
	      print_fourfold
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
	    generate('htl',nil,nil,nil)
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
	:	'extends' IDENTIFIER;

vardeclaration
	:	t = type IDENTIFIER
	  {
	    if(not @current_method.nil?)
	      @current_method.set_to_local_variables($IDENTIFIER.text,VariableSymbol.new($IDENTIFIER.text, $t.type_a))
	    else
	      @current_class.set_to_instance_variables($IDENTIFIER.text, VariableSymbol.new($IDENTIFIER.text, $t.type_a))
	    end
	  }
	  ';';


methoddeclaration 
	: 	'method' 
	    (t = primitivetype | t = classtype)
	    IDENTIFIER
	    { 
	      @current_class.instance_methods[$IDENTIFIER.text] = MethodSymbol.new($IDENTIFIER.text, $t.type_a, @current_class)
	      @current_method = @current_class.instance_methods[$IDENTIFIER.text]
	      
	      #Creamos una instancia en el metodo para saber a que instancia pertenece
	      @current_method.set_to_local_variables('_ci',VariableSymbol.new('_ci', $IDENTIFIER.text))
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
	      generate('ret', nil, nil, nil)
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
	
arraytype
	:	primitivetype '[' INTEGER ']';
	
classtype
  returns [type_a]:
	t = IDENTIFIER 
	{
	  $type_a = $t.text
	}
	;

type 
	returns [type_a]: 	
	(t = primitivetype | arraytype | t = classtype) 
	{
	  $type_a = $t.type_a
	}
	;

statement
	:	assignment  | conditional | invocation ';' | loop | print | returnstmt | ';';
	
assignment 
	:	lhsassignment '=' rhsassignment ';';
	
lhsassignment
	: 	arrayaccess
		| IDENTIFIER '.' IDENTIFIER	//objeto.atributo
		| 'this' '.' IDENTIFIER		//this.atributo
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
			      raise "Variable #{$IDENTIFIER.text} not declared in class #{@current_class.name}"
			    end
			  end
	    }
		;
		
rhsassignment
	:	expression 
    {
      rh = @stack_operands.pop
      rh_t = @stack_types.pop
      lh = @stack_operands.pop
      lh_t = @stack_types.pop
      if(lh_t != rh_t)
        raise "Tried to assign #{rh_t} to #{lh_t} in #{@current_class.name}::#{@current_method.name if @current_method}"
      end
      generate('=', rh, nil ,lh )
      free_avail(rh)
      free_avail_const(rh)
    }
	  | 
	  'new' 
	  IDENTIFIER
	  '('')'
	  ;
	
returnstmt
	:	'return' expression? ';';
	
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
	: 	'print' '(' expression ')' ';';

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
	           )*;
	
factor
	:
		IDENTIFIER '.' IDENTIFIER	//objeto.atributo
		| 'this' '.' IDENTIFIER		//this.atributo
		| IDENTIFIER
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
			      raise "Variable #{$IDENTIFIER.text} not declared in #{@current_class.name}::#{@current_method.name if @current_method}"
			    end
			  else
			  	if( not @current_class.instance_variables[$IDENTIFIER.text].nil?)
			  	  @stack_operands.push(@current_class.instance_variables[$IDENTIFIER.text].address)
			  	  @stack_types.push(@current_class.instance_variables[$IDENTIFIER.text].type)
			    else
			      raise "Variable #{$IDENTIFIER.text} not declared in #{@current_class.name}::#{@current_method.name if @current_method}"
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
		| read
		| invocation
		| arrayaccess			//arr[5]
		| '('
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
	:	IDENTIFIER'[' expression ']';
	
read	:	('readint' | 'readdouble' | 'readchar') '(' ')';

invocation
	:	 callingclassbyinstance
	   IDENTIFIER
	   {
	     if(@class_called.instance_methods[$IDENTIFIER.text].nil?)
	       raise "El metodo invocado no existe"
	     end
	     @method_called = @class_called.instance_methods[$IDENTIFIER.text]
	     generate('era', nil, @class_called.name, @method_called.name)
	   }
	   '('
	   arguments?
	   ')'
	   {
	     generate('gsb', @instance_called.address, @class_called.name, @method_called.name)
	     @instance_called = nil;
	   }
	;
	
callingclassbyinstance
  : ((t = IDENTIFIER | t = 'this') '.')?
    {
      if($t.nil? || $t.text == 'this')
        @class_called = @current_class
        @instance_called = @current_instance
      else
        @instance_called = @current_method.local_variables[$IDENTIFIER.text] || @current_class.instance_variables[$IDENTIFIER.text]
        if(!@instance_called)
          raise "Instancia '#{$IDENTIFIER.text}' a la que se llama no declarada"
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
	      raise "Has introducido mas argumentos que parametros en #{@method_called.name} llamado desde #{@current_class.name}::#{@current_method.name}"
	    end
	    parameter_type = @method_called.parameter_list[@argument_counter].type
	    if(argument_type != parameter_type)
	      raise "El argumento '#{@argument_counter + 1}' del metodo '#{@method_called.name}' no es del tipo '#{parameter_type}' llamado desde #{@current_class.name}::#{@current_method.name}"
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
	        raise "Has introducido mas argumentos que parametros en #{@method_called.name} llamado desde #{@current_class.name}::#{@current_method.name}"
	      end
	      parameter_type = @method_called.parameter_list[@argument_counter].type
	      if(argument_type != parameter_type)
	        raise "El argumento '#{@argument_counter + 1}' del metodo '#{@method_called.name}' no es del tipo '#{parameter_type}' llamado desde #{@current_class.name}::#{@current_method.name}"
	      end
	      @argument_counter += 1
	      #Los prm empiezan en 1 pues el 0 le pertenece a self
	      generate('prm', nil,argument, @argument_counter)
	    }
	  )*
	  {
	    if(@method_called.parameter_count != @argument_counter)
	        raise "Has introducido menos argumentos que parametros en #{@method_called.name} llamado desde #{@current_class.name}::#{@current_method.name}"
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

		
