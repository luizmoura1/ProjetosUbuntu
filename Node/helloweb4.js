const express = require('express');
const app = express();

app.get('/', (req, res) => res.send('Oi, mundo!'));
app.listen(8080);

console.log('Server running at http://localhost:8080/');
