const fs = require('fs');   /* Carrega fs, o módulo filesystem */
console.log('Before file read - start of non-blocking code');

// Lê arquivo de forma assíncrona
fs.readFile('texto1.txt', 'utf8', (err, data) => {
  /* if (err) {
    console.error('Error reading file: ' + err);
    return;
  } */
    if (err) throw err;
    console.log('Non-blocking operation completed - File contents: ' + data);  // + ou , ?
});

console.log('After file read - Reading file... (this runs first, before the file is read!)'); 
