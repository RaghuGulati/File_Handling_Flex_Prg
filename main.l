%{
#include<stdio.h>
%}

%%

"!" {fprintf(yyout,"*");}
"." {fprintf(yyout,"|");}

.  {fprintf(yyout,"%s",yytext);}	

%%

int yywrap() {}

int main()
{

    /* yyin and yyout as pointer 
    of File type */
 
    extern FILE *yyin, *yyout; 
  
    /* yyin points to the file input.txt 
    and opens it in read mode*/
    yyin = fopen("input.txt", "r"); 
  
    /* yyout points to the file output.txt 
    and opens it in write mode*/
    yyout = fopen("output.txt", "w"); 
  
    yylex(); 
    return 0; 
} 


