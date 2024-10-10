class Medico{
    public string Nome {get; private set;}

    public Medico(string nome){
        Nome = nome;
    }

    public void AtenderPaciente(Paciente paciente){
        Console.WriteLine($"O medico {Nome} esta atendendo o paciente {paciente.Nome}");
    }

}