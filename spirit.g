grammar spirit;														

goal	
	:	classdeclaration* mainclass;

mainclass 
	:	'class' 'Main' '{' vardeclaration* methoddeclaration* methodmain '}';
	
methodmain
	:	'void' 'main' '(' ')' '{' vardeclaration* statement* '}';
	
classdeclaration 
	: 	'class' IDENTIFIER '{' vardeclaration* methoddeclaration* '}';

vardeclaration
	:	type IDENTIFIER ';' ;
	
methoddeclaration 
	: 	'method' (primitivetype | classtype | 'void') IDENTIFIER '(' parameters? ')' '{' vardeclaration* statement* '}';
	
parameters
	:	type IDENTIFIER (',' type IDENTIFIER)*;

primitivetype
	:	'int' | 'char' | 'float' | 'boolean';
	
arraytype
	:	primitivetype '[' INTEGER ']';
	
classtype
	:	IDENTIFIER;

type 
	: 	primitivetype | arraytype | classtype;

statement
	:	assignment  | conditional | invocation ';' | loop | print | returnstmt | ';';
	
assignment 
	:	lhsassignment '=' rhsassignment ';';
	
lhsassignment
	: 	arrayaccess
		| IDENTIFIER '.' IDENTIFIER	//objeto.atributo
		| 'this' '.' IDENTIFIER		//this.atributo
		| IDENTIFIER
		;
		
rhsassignment
	:	(expression | 'new' IDENTIFIER '(' ')');
	
returnstmt
	:	'return' expression? ';';
	
conditional 
	:	 'if' '(' expression ')' '{' statement* '}' ('elsif' '(' expression ')' '{' statement* '}' )* ('else' '{' statement* '}' )?;
	
loop 
	: 	'while' '(' expression ')' '{' statement* '}';
	
print 
	: 	'print' '(' expression ')' ';';

expression 
	: 	exp (COMPARITIONOPERATORS exp)?;
	
exp
	: 	term (ADDITIONSUBSTRACTIONOPERATORS term)?;
	
term
	: 	factor (MULTIPLICATIONDIVISIONOPERATORS factor)?;
	
factor
	:
		IDENTIFIER '.' IDENTIFIER	//objeto.atributo
		| 'this' '.' IDENTIFIER		//this.atributo
		| IDENTIFIER
		| INTEGER
		| FLOAT
		| CHAR
		| read
		| invocation
		| arrayaccess			//arr[5]
		| '(' expression ')'
	;

arrayaccess
	:	IDENTIFIER '[' expression ']';
	
read	:	('readint' | 'readdouble' | 'readchar') '(' ')';

invocation
	:	 (IDENTIFIER | 'this') '.' IDENTIFIER '(' arguments? ')';
	
arguments
	:	expression (',' expression)*;
	
/* Tokens */
MULTIPLICATIONDIVISIONOPERATORS
	:  	 '*' | '/' ;

ADDITIONSUBSTRACTIONOPERATORS
	:  	 '+' | '-' ;
	
BINARYOPERATORS
	:  	'&&' | '||' ;
	
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

		
