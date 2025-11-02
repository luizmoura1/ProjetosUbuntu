printf( formato [, expr1, expr2, ..., exprN] ) 

onde: 

formato = "{ texto | <escape(s)> } [ spec1 spec2 … specN ]" 

- <escape(s)> → um ou mais códigos de escape válidos (\n, \t, \xNN, etc.) 
- spec1, spec2 … specN → cada um representa um especificador de formato real (%d, %s, %c, etc.) 
- deve conter pelo menos um caractere visível ou pelo menos um escape 
- cada especificador deve ter uma expressão correspondente 
- expressões são opcionais se não houver %
