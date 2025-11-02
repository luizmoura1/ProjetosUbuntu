// abrir o browser, digitar http://localhost:3000
const greeting = "Oi, ";
let name;
name = "mundo!"; 

const hostname = '127.0.0.1';
const port = 3000; 		// pode ser 8080

http = require('http');		// const ... 'node:http'

listener = function(req, res){
	res.writeHead(200, {'Content-Type':'text/plain'});
	res.end(greeting + name);
};

http.createServer(listener).listen(port, hostname);

console.log(`Server running at http://${hostname}:${port}/`);

/*
não entendo as alternativas com
const { createServer }
e
() => {}

e
res.statusCode = 200;
res.setHeader('Content-Type', 'text/plain');
*/
