const add = (a,b) => a+b;
const subtract = (a,b) => a-b;
const multiply = (a,b) => a*b;
const divide = (a,b) => a/b;

function calculate(operation){
    const n1 = parseFloat(document.getElementById("n1").value);
    const n2 = parseFloat(document.getElementById("n2").value);
    const result = document.getElementById("result");

    if(isNaN(n1) || isNaN(n2)){
        result.innerHTML = 'Por favor, informe somente números'
        return;
    }
    const resultado = operation(n1,n2);
    result.innerHTML = 'Resultado ${resultado}';
}