%{
#include <stdio.h>
%}

%%
"number"        { printf("NUMBER: %s\n", yytext); }
"words"         { printf("WORDS: %s\n", yytext); }
[0-9]+          { printf("INTEGER: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9]* { printf("IDENTIFIER: %s\n", yytext); }
\".*\"           { printf("STRING: %s\n", yytext); }
[ \t\n]         ;  // Skip whitespace and newlines
[=;,.!]         { printf("SYMBOL: %s\n", yytext); }
.               { printf("INVALID: %s\n", yytext); }
%%

int main(int argc, char* argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <input_file>\n", argv[0]);
        return 1;
    }
    FILE* input = fopen(argv[1], "r");
    if (!input) {
        perror("fopen");
        return 1;
    }
    
    yyin = input;
    yylex();
    fclose(input);
    
    return 0;
}
