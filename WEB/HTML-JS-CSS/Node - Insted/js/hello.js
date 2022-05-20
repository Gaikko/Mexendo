var http = require('http');
const express = required('espress');

function somar(n1, n2) {
    var n1 = parseFloat(document.getElementById("num1").value);
    var n2 = parseFloat(document.getElementById("num2").value);
    var soma = n1 + n2;
    return document.getElementById("result").innerHTML = soma;
}

console.log(somar);

function processaHttp(req, res) {
    let myHtml = '<!DOCTYPE html>' + 
    '<html><head><title>Teste Node</title></head>' +
    '<body><h6>Verifique a Mensagem no Console.</h6>' +
    '<h1>Num 1:</h1><input type="text" name="num1" id="num1">' +
    '<h1>Num 2:</h1><input type="text" name="num2" id="num2">' +
    '<input type="button" onclick="somar()" value="Somar!">' +
    '<h1 id="result">Resultado</h1>' +
    '<script src="js/hello.js"></script>' +
    '</body></html>';

    res.writeHead(200, {'content-type':"text/html"});
    res.end(myHtml);
}

let server = http.createServer(processaHttp);
server.listen(8080);