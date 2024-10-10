class Universidade
{
    private List<Aluno> alunos = new List<Aluno>();

    public void AdicionarAluno(Aluno aluno){
        alunos.Add(aluno);
    }

    public void MostrarAlunos(){
        foreach (var aluno in alunos)
        {
            Console.WriteLine(aluno.Nome);
        }
    }
}