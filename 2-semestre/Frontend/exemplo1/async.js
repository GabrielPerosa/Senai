async function buscarEndereco(){

    const cep = document.getElementById('cep').value.trim();

    if(cep.length !== 8 || isNaN(cep)){
        alert('Por favor, digite um CEP válido com 8 dígitos.');
        return;
    }

    try{

    
    const response = await fetch(`https://viacep.com.br/ws/${cep}/json/`);
    //websocket

    if(!response.ok){
        throw new Error('Erro ao buscar o endereço.');
    }

    const data = await response.json();

    if(data.erro){
        throw new Error('CEP não encontrado.')
    }

    document.getElementById('resultado').innerHTML = `
    <p><strong>Logradouro:</strong> ${data.logradouro}</p>
    <p><strong>Bairro:</strong> ${data.bairro}</p>
    <p><strong>Cidade:</strong> ${data.localidade}</p>
    <p><strong>Estado:</strong> ${data.uf}</p>
    `;

} catch (error){
    document.getElementById('resultado').innerHTML = `
    <p class="erro">${error.message}</p>
    `;
}

}