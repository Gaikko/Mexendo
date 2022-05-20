console.log("Ola Mundo!, Mensagem via Console");

function somar(n1, n2) {
    var n1 = parseFloat(document.getElementById("num1").value);
    var n2 = parseFloat(document.getElementById("num2").value);
    var soma = n1 + n2;
    return document.getElementById("result").innerHTML = soma;
}