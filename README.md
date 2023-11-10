# Lexer Custom Code Explanation

## Lexical Rules for Token Recognition

The lexer defines a set of rules to recognize various tokens based on patterns in the input code.

- **"number":** Recognizes the keyword "number" and prints it as a NUMBER token.
- **"words":** Recognizes the keyword "words" and prints it as a WORDS token.
- **[0-9]+:** Recognizes sequences of digits and prints them as INTEGER tokens.
- **[a-zA-Z][a-zA-Z0-9]*:** Recognizes identifiers (variable names) and prints them as IDENTIFIER tokens.
- **\".*\":** Recognizes string literals enclosed in double quotes and prints them as STRING tokens.
- **[ \t\n]:** Skips whitespace and newlines.
- **[=;,.!]:** Recognizes various symbols like '=', ';', ',', '!', and '.' and prints them as SYMBOL tokens.
- **.:** Captures any other character that doesn't match the specified patterns and prints it as an INVALID token.

## Main Function and File Input

- The `main` function handles file input and calls the lexer to analyze the input file.
- It expects the input file as a command-line argument and prints an error message if the argument is missing.
- The lexer reads characters from the input file (`yyin`) and applies the defined rules to recognize tokens.

## Concepts Used

- **Flex:** The lexer is implemented using Flex, a tool for generating lexical analyzers. Flex allows the definition of rules to recognize tokens in the input code.
- **Regular Expressions:** The rules are defined using regular expressions, specifying patterns for token recognition.
- **Context-Free Grammar:** The lexer defines a simple context-free grammar to recognize keywords, identifiers, literals, and symbols in the input code.

## Relevant Details

- The lexer uses C-style printf statements to print token information.
- Error handling is minimal and focuses on file input validation.
- The lexer outputs recognized tokens and their corresponding lexemes.

This lexer serves as a basic foundation for identifying tokens in a C-like language, demonstrating the principles of lexical analysis and tokenization.
