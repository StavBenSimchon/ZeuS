const express = require('express');
const app = express();

const hostname = '0.0.0.0';
const port = 3000;

app.use(express.static(__dirname + 'public'));
// app.use(express.static(__dirname + 'public2'));

app.get('/', (req, res) => {
    res.send('Hello World!');
});

app.listen(port, hostname, () => console.log(`Server listening on port: ${port}`));