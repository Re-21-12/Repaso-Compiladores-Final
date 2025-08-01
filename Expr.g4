grammar Language;

program: 'main' sbk EOF;

block: sentence*;

sentence: declaration ';'
        | assignment ';'
        | ifStatement
        | printStatement ';'
        ;

sef: START_PARETNHESES expression FINAL_PARENTHESIS;
sbk: START_KEY block FINAL_KEY;
eq: EQUAL expression;
iq: ID eq;

declaration: type ID (eq)?;

assignment: iq;
assignment: iq expression;

ifStatement: IF sef sbk
        |   (ELSE IF sef sbk)*     
        |   (ELSE sbk)?;

printStatement: PRINT sef;

expression: expression '^' expression           
          | expression ('*' | '/') expression   
          | expression ('+' | '-') expression   
          | sef                                  
          | expression ('>' | '<' | '>=' | '<=' | '==' | '!=') 
          | ID                                  
          | NUMBER                             
          ;

type: 'int' | 'float' ;

ID: [a-zA-Z_][a-zA-Z0-9_]*;
NUMBER: [0-9]+('.'[0-9]+)?;
WS: [ \t\r\n]+ -> skip;

START_KEY : '{' ;
FINAL_KEY : '}' ;
START_PARETNHESES: '(' ;
FINAL_PARENTHESIS: ')';
MAIN: 'main';
PRINT: 'print';
IF: 'if';
ELSE: 'else';
EQUAL = '=';
