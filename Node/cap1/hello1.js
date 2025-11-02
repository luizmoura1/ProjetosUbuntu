#!/usr/bin/env node
// Programa: helloworld, comentários e console.log
// Ambiente: Ubuntu - node.js, gedit 

/* Comentarios,
*  console.log,
*  literais string,
*  constantes e variaveis
/* asteriscos sao opcionais e
   comentarios aninhados precisam
   ser escapados assim: *\/
*/
// backslash escapa line break
// fim de linha com ; opcional

const SAUDACAO = "Oi\
, "                             // definicao obrigatoria

let nome                        /* declaracao obrigatoria */


console.log("LITERAL CLASSICA 'HELLOWORLD':")
console.log("\x1B[7m%s\x1B[0m", "Oi, mundo!")

console.log('\nVALOR PADRAO ANTES DA "INICIALIZACAO":')
console.log("%s%s", "nome = ", nome)
console.log("%s%s", SAUDACAO, nome)

nome = "Ana"
console.log('\nINICIALIZACAO ou PRIMEIRA \'ATRIBUICAO\':')
console.log("nome = ", nome)
console.log(SAUDACAO, nome)

nome = 'Beatriz'
console.log("\nNOVA \"ATRIBUICAO\":")
console.log("nome = " + nome)
console.log(SAUDACAO + nome)

console.log("\nRESUMO:")
console.log("Constante:\t" + "SAUDACAO = '" + SAUDACAO + "'")
console.log("Variavel:\t" + "nome = '" + nome + "'")
console.log("Concatenacao:\t'" + SAUDACAO + nome + "'")


/*
Avaliar
const SAUDACAO = `Oi,
`;

*/
