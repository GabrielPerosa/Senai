class Casa
{
    // Composição - uma casa é composta por vários cômodos.
    private List<Comodo> comodos = new List<Comodo>();

    public void AdicionarComodo(Comodo comodo)
    {
        comodos.Add(comodo);
    }

    public void MostrarComodos(){
        if(comodos.Count!=0){
        foreach (var comodo in comodos){
            Console.WriteLine(comodo.Nome);
        }
        }else{
            Console.WriteLine("Não ha comodos");
        }
    }
}
