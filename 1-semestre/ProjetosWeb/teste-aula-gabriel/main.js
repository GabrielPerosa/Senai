
const botao = document.querySelector('#enviar')

botao.addEventListener("click", (evento)=>{
    
    evento.preventDefault()
    usuario = document.getElementById('usuario').value;
    senha = document.getElementById('senha').value;

    console.log(usuario, senha);
})
