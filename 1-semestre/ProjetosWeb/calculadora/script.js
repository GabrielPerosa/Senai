var operadores = ['+', '-', '*', '/', '%'];
 

function insert(num) {
    
    var displayPrimario = document.getElementById('displayPrimario').innerHTML;
   
    document.getElementById('displayPrimario').innerHTML = displayPrimario + num;

}

function clean() {
    
    document.getElementById('displayPrimario').innerHTML = "";
    document.getElementById('displaySecundario').innerHTML = "";
} 

function calcular() {
    var expressao = document.getElementById('displayPrimario').innerHTML;
    
    ultimoCaractere = expressao.charAt(expressao.length - 1);

    if (operadores.includes(ultimoCaractere)) {
        document.getElementById('displaySecundario').innerHTML = "Expressão inválida";
        return;
    }
    
    var resultado = eval(expressao);
    
    document.getElementById('displayPrimario').innerHTML = ""; 
    document.getElementById('displaySecundario').innerHTML = expressao + " = " + resultado;
}
    
