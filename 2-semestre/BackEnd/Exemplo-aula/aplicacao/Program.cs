// RELAÇÃO DE ASSOCIAÇÃO

Console.WriteLine("Relação de associação:");

Paciente p1 = new Paciente("joão");
Medico m1 = new Medico("Roberto");

m1.AtenderPaciente(p1);
Console.WriteLine(p1.Nome);
//Console.WriteLine(m1.Nome);

//RELAÇÃO DE AGREGAÇÃO 

Console.WriteLine("Relação de agregação:");

Aluno aluno1 = new Aluno ("André");
Aluno aluno2 = new Aluno ("Amanda");

Universidade universidade = new Universidade();
universidade.AdicionarAluno(aluno1);
universidade.AdicionarAluno(aluno2);

universidade.MostrarAlunos();

//RELAÇÃO DE COMPOSIÇÃO

Console.WriteLine("Relação de Composição:");

Casa c1 = new Casa();
c1.AdicionarComodo(new Comodo("Sala"));
c1.AdicionarComodo(new Comodo("Cozinha"));
c1.AdicionarComodo(new Comodo("Quarto"));
c1.MostrarComodos();