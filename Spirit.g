grammar Spirit;

options { language = Ruby; }

@header{

  class Stack < Array
    def pop
      delete_at(self.size - 1)
    end
  end
  
  class String
    def temporal?
      self[0..1] == "&t"
    end
  end
  
  #Contiene nombre, tipo y direccion de una variable
  class VariableSymbol
    attr_accessor :name, :type, :address
    
    def initialize(n, t)
      @name = n
      @type = t
      @address = "dir#{n}" #Cambiar esto y poner direccion
    end
    
  end
  
  #Contiene nombre, hash de variables de instancia, hash de metodos y super clase
  class ClassSymbol
    attr_accessor :name, :instance_variables, :instance_methods, :parent_class
    
    def initialize(n, p = nil)
      @name = n #String
      @parent_class = p #ClassSymbol
      @instance_variables = Hash.new #VariableSymbol
      @instance_methods = Hash.new #MethodSymbol
    end
    
  end
  
  #Contiene tipo de retorno, lista de variables locales, lista de variables de parametro, 
  class MethodSymbol
    attr_accessor :name, :return_type, :local_variables, :parameter_variables, :container_class
    
    def initialize(n, r = nil, c = nil)
      @name = n #String
      @return_type = r #ClassSymbol
      @container_class = c #ClassSymbol
      @local_variables = Hash.new #VariableSymbol
      @parameter_variables = Hash.new #VariableSymbol
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

  #Creamos direcciones temporales
  @avail = ["&t0", "&t1", "&t2","&t3", "&t4","&t5", "&t6","&t7", "&t8","&t9"]  
  
  @stack_operators = Stack.new
  @stack_operands = Stack.new
  @stack_types = Stack.new
  @stack_jumps = Stack.new
  @fourfold = Stack.new
  @cont = 0
  
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
      return 'boolean'
    when (operator == '<' || operator == '>' || operator == '<=' || operator == '>=')
      if((type_a == 'int' || type_a == 'float') && (type_b == 'int' || type_b == 'float'))
        return 'boolean'
      else
        raise "Cant apply #{operator} to #{type_a} and #{type_b}"
      end
    end
  end
  
  def get_avail
    return @avail.delete_at(0)
  end
  
  def free_avail(a)
    if(a.temporal?) then
      @avail.insert(0,a)
    end
  end
  
  def fill(dir,cont)
    puts "Si que si!"
  end
  
  def generate(oper,a,b,c)
    @fourfold << [oper,a,b,c]
    @cont += 1    
  end
  
  def print_fourfold
		@fourfold.size.times do |i|
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
	    @current_class.instance_methods['main'] = MethodSymbol.new('main')
	    @current_method = @current_class.instance_methods['main']
	  }
	  '(' ')' '{' vardeclaration* statement* '}'
	  {
	    @current_method = nil
	  };
	
classdeclaration 
	: 	'class' IDENTIFIER inherits?  '{' vardeclaration* methoddeclaration* '}';
	
inherits
	:	'extends' IDENTIFIER;

vardeclaration
	:	t = type IDENTIFIER
	  {
	    if(not @current_method.nil?)
	      @current_method.local_variables[$IDENTIFIER.text] = VariableSymbol.new($IDENTIFIER.text, $t.type_a)
	    else
	      @current_class.instance_variables[$IDENTIFIER.text] = VariableSymbol.new($IDENTIFIER.text, $t.type_a)
	    end
	  }
	  ';';

//Esta pendiente
methoddeclaration 
	: 	'method' 
	    (primitivetype | classtype | 'void') 
	    IDENTIFIER
	    { 
	      @current_class.instance_methods[$IDENTIFIER.text] = MethodSymbol.new($IDENTIFIER.text)
	      @current_method = @current_class.instance_methods[$IDENTIFIER.text]
	    }
	    '(' parameters? ')' 
	    '{' vardeclaration* statement* '}'
	    {
	      @current_method = nil
	    }
	    ;
	
parameters
	:	type IDENTIFIER (',' type IDENTIFIER)*;

primitivetype
	returns [type_a]:	
	t = ('int' | 'char' | 'float' | 'boolean') {$type_a = $t.text};
	
arraytype
	:	primitivetype '[' INTEGER ']';
	
classtype
	:	IDENTIFIER;

type 
	returns [type_a]: 	
	(t = primitivetype | arraytype | classtype) {$type_a = $t.type_a};

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
			      raise "Variable #{$IDENTIFIER.text} not declared in class #{@current_class.name} or method #{@current_method.name}"
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
        raise "Tried to assign #{rh_t} to #{lh_t}"
      end
      generate('=', rh, nil ,lh )
      free_avail(rh)
    }
	  | 'new' IDENTIFIER '(' ')'
	  ;
	
returnstmt
	:	'return' expression? ';';
	
conditional 
	:	 'if' '(' expression ')' '{' statement* '}' ('elsif' '(' expression ')' '{' statement* '}' )* ('else' '{' statement* '}' )?;
	
loop 
	: 	'while' '(' expression ')' '{' statement* '}';
	
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
			      raise "Variable #{$IDENTIFIER.text} not declared"
			    end
			  else
			  	if( not @current_class.instance_variables[$IDENTIFIER.text].nil?)
			  	  @stack_operands.push(@current_class.instance_variables[$IDENTIFIER.text].address)
			  	  @stack_types.push(@current_class.instance_variables[$IDENTIFIER.text].type)
			    else
			      raise "Variable #{$IDENTIFIER.text} not declared"
			    end
			  end 
			}
		| INTEGER 
		  { #Regla 1 GC
				@stack_operands.push($INTEGER.text)
				@stack_types.push('int')
		  }
		| FLOAT
		| CHAR
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
	:	 (IDENTIFIER | 'this') '.' IDENTIFIER '(' arguments? ')';
	
arguments
	:	expression (',' expression)*;
	
/* Tokens */
MULTIPLICATIONDIVISIONOPERATORS
	:  	 '*' | '/' | '&&';

ADDITIONSUBSTRACTIONOPERATORS
	:  	 '+'  | '-' | '||' ;
	
COMPARITIONOPERATORS
	:	'==' | '<' | '>' | '<=' | '>=' | '!=';
	
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

		
