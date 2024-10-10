document.getElementById("Adicionar").addEventListener("click", function() { 


    //Pega as informações inseridas nos campos
    var nome = document.getElementById("nomeInput").value;
    var email = document.getElementById("emailInput").value;
    var telefone = document.getElementById("telefoneInput").value;
  
    // Chama a minha tabela
    var tabela = document.getElementById("dataTable");
  
    // Insere uma nova linha na tabela
    var newRow = tabela.insertRow();
  
   
    //Insere cada celula 
    var nomeCell = newRow.insertCell(0);
    var emailCell = newRow.insertCell(1);
    var telefoneCell = newRow.insertCell(2);
    var editarCell = newRow.insertCell(3); 
    var excluirCell = newRow.insertCell(4); 
  
   //Definição da borda 
    nomeCell.style.border = "1px solid #000";
    emailCell.style.border = "1px solid #000";
    telefoneCell.style.border = "1px solid #000";
  
    // Insere os valores capturados nos campos e joga na tabela
    nomeCell.textContent = nome;
    emailCell.textContent = email;
    telefoneCell.textContent = telefone;
  
    // Cria um botão "Editar"
    var editarButton = document.createElement("button");
    editarButton.textContent = "Editar";
  
    // Adiciona um event listener para o botão "Editar"
    editarButton.addEventListener("click", function() {
        // Lógica para editar a linha
        var novosDados = prompt("Digite os novos dados separados por vírgula (Nome, E-mail, Telefone):");
        // Divide os novos dados em um array
        var novosDadosArray = novosDados.split(",");
  
        //Atualiza os dados na tabela
        nomeCell.textContent = novosDadosArray[0];
        emailCell.textContent = novosDadosArray[1];
        telefoneCell.textContent = novosDadosArray[2];

    });
  
    // Adiciona o botão "Editar" à célula correspondente
    editarCell.appendChild(editarButton);
  
    // Cria um botão "Excluir"
    var excluirButton = document.createElement("button");
    excluirButton.textContent = "Excluir";
  
    // Adiciona um event listener para o botão "Excluir"
    excluirButton.addEventListener("click", function() {
        // Lógica para excluir a linha (neste caso, exclui a linha atual)
        tabela.deleteRow(newRow.rowIndex);
    });
  
    // Adiciona o botão "Excluir" à célula correspondente
    excluirCell.appendChild(excluirButton);
  });