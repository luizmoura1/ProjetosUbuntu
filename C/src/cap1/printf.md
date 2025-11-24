printf( formato [, expr1, expr2, ..., exprN] ) 

onde: 

formato = "{ caractere | <escape> } [ spec1 spec2 … specN ]" 

- deve conter pelo menos um caractere visível ou pelo menos um escape 
- <escape> → um ou mais códigos de escape válidos (\n, \t etc.) 
- spec1, spec2 … specN → cada um representa um especificador de formato real (%d, %s, %c etc.) 
- cada especificador deve ter uma expressão correspondente 

