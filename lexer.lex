%option noyywrap

%{
#include "parser.tab.hh"
using namespace std;
int linenum = 0;
%}

%%

">" {return INC;}
"<" {return DEC;}
"+" {return ADD;}
"-" {return SUB;}
"[" {return LSQ;}
"]" {return RSQ;}
"." {return OUT;}
"," {return IN;}

\n	{linenum++;}

.	{continue;} // All other characters ignored


%%



void yyerror (char const *s)
{
  fprintf (stderr, "%s\n", s);
  exit(1);
}