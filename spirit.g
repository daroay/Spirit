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
	: 	'int' | 'char' | 'float' | 'boolean' | identifier | arrayidentifier;

statement
	:	 '{' (statement)* '}' | conditional | loop | print | assignation ;
	
conditional 
	:	 'if' '(' expression ')' statement ('elsif' '(' expression ')' statement )* ('else' statement )?;
	
loop 
	: 	'while' '(' expression ')' statement ;
	
print 
	: 	'print' '(' expression ')' ';';
	
assignation 
	:	(arrayidentifier | identifier)  '=' expression ';';
	

expression 
	: 	exp (COMPARITIONOPERATORS exp)?;
	
exp
	: 	term (ADDITIONSUBSTRACTIONOPERATORS term)?;
	
term
	: 	factor (ADDITIONSUBSTRACTIONOPERATORS factor)?;
	
factor
	: 	'(' expression ')'| (ADDITIONSUBSTRACTIONOPERATORS)? varcte;

varcte 
	: 	(STRING | FLOAT | INTEGER| arrayidentifier | 'true' | 'false'
		| identifier | 'this' | 'new' identifier '(' ')'| 'new' arrayidentifier | '!' expression ) (invocation)?;

invocation
	:	 '.' identifier '(' ( expression ( ',' expression )* )? ')'  (invocation)?;
		
identifier 
	:	IDENTIFIER ;
	
arrayidentifier
	:	( STRING | FLOAT | INTEGER | IDENTIFIER) '['(expression)?']';
	
/* Tokens */
MULTIPLICATIONDIVISIONOPERATORS
	:  	 '*' | '/' ;

ADDITIONSUBSTRACTIONOPERATORS
	:  	 '+' | '-' ;
	
BINARYOPERATORS
	:  	'&&' | '||' ;
	
COMPARITIONOPERATORS
	:	'<' | '>' | '<=' | '>=' | '!=';
	
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

		
