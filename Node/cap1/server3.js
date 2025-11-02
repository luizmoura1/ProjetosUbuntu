const hostname = '127.0.0.1';
const port = 8080;

http = require('node:http');

listener = function(req, res){
	res.writeHead(200, {'Content-Type':'text/plain'});
	res.end('Oi, turma!');
};

server = http.createServer(listener);
server.listen(port);

console.log(`Server running at http://${hostname}:${port}/`);

// abrir o browser, digitar http://localhost:8080
