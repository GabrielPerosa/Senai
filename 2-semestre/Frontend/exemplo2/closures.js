let contador = 0;

function incremento(){
    contador++;
    return contador;
}

const const1 = criarContador();
console.log('Contador 1: ${const1()}');

console.log(incremento());
console.log(incremento());
console.log(incremento());