%code requires{	
	#include <cstdio>
	#include <iostream>
	#include <fstream>
	#include <map>
	#include <cstdlib>
  	using namespace std;
	extern FILE* yyin;
	int yylex();
	void yyerror(const char *);
	
}

%union{

}

%token INC DEC ADD SUB LSQ RSQ OUT IN



%%
program				: loop_or_character program
					| loop_or_character
					;

loop_or_character	: loop
					| character
					;

loop				: LSQ program RSQ
					;

character			: INC
					| DEC 
					| ADD
					| SUB
					| OUT
					| IN
					;

%%

int main() 
{

	while(yyparse());
	
}