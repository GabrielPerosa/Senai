class Relatorio : Imprimivel{
    private string Nome;

    public Relatorio (string nome){
        Nome = nome;
    }

    public void imprimir (){
        Console.WriteLine("Imprimindo Relatorio " + Nome);
    }

}