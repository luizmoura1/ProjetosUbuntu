var http = require("http");
listener = function (request, response) {
 // Send the HTTP header
 // HTTP Status: 200 : OK
 // Content Type: text/html
 response.writeHead(200, {'Content-Type': 'text/html'});

 // Send the response body as "Hello World"
 response.end('<h2 style="text-align: center;">Oi, mundo!</h2>');
};

http.createServer(listener).listen(3000);

// Console will print the message
console.log('Server running at http://127.0.0.1:3000/');
