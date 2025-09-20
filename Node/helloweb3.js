let http = require('http');
/* let http ou var http ou http? */
/* 'http' ou "http" ou 'node:http'? */

http.createServer(function (req, res) {
 res.writeHead(200, {'Content-Type': 'text/plain'});    /* text/plain ou text/html?*/
 res.end('Oi, mundo!');
}).listen(8080);    /* 3000 ou 8080?*/

console.log('Server running at http://localhost:8080/');
