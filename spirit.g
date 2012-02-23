grammar spirit;
													
//options { language = Ruby; }

goal	
	:	mainclass ( classdeclaration )*;

mainclass 
	:	'class' identifier '{' 'static' 'void' 'main' '(' ')' '{' statement '}' '}';
	

classdeclaration 
	: 	'class' identifier '{' (vardeclaration)* (methoddeclaration)* '}';

vardeclaration
	:	type identifier ';' ;
	
methoddeclaration 
	: 	type identifier '(' ( type identifier (',' type identifier)*)? ')' '{' (vardeclaration)* (statement)* 'return' expression ';' '}';

type 
	: 	'int' | 'char' | 'float' | 'boolean' | identifier;

statement
	:	 '{' (statement)* '}' | conditional | loop | print | assignation ;
	
conditional 
	:	 'if' '(' expression ')' statement ('elsif' '(' expression ')' statement )* ('else' statement )?;
	
loop 
	: 	'while' '(' expression ')' statement ;
	
print 
	: 	'print' '(' expression ')' ';';
	
assignation 
	:	identifier  '=' expression ';';
	

expression 
	: 	(STRING | FLOAT | INTEGER | 'true' | 'false'
		| identifier | 'this' | 'new' identifier '(' ')'| 'new' identifier '[' expression ']'  | '!' expression 
		| '(' expression ')' ) (expressionalpha)?;

expressionalpha 
	:	 (BINARYOPERATOR expression | '.' identifier '(' ( expression ( ',' expression )* )? ')'  ) (expressionalpha)?;
		
identifier 
	:	IDENTIFIER | ARRAYIDENTIFIER ;
	
/* Tokens */
MULTIPLICATIONDIVISION
	:  	 '*' | '/' ;

ADDITIONSUBSTRACTION
	:  	 '+' | '-' ;
	
BINARYOPERATOR
	:  	'&&' | '||' ;
	
COMPARITIONOPERATIONS
	:	'<' | '>' | '<=' | '>=';
	
IDENTIFIER  
	:	('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*;
	
ARRAYIDENTIFIER  
	:	('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')* '['']';

INTEGER 
	:	'0'..'9'+;

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

		
