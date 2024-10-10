import java.util.Scanner;

public class Arquivo {
    Scanner scanner = new Scanner(System.in);
    private String nome, conteudo, tamanho;


    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTamanho() {
        return tamanho;
    }

    public void setTamanho(String tamanho) {
        this.tamanho = tamanho;
    }

    public String getConteudo() {
        return conteudo;
    }

    public void setConteudo(String conteudo) {
        this.conteudo = conteudo;
    }

    public void abrir(){
        System.out.println("Abrindo o arquivo");
        System.out.println("Nome :" + getNome());
        System.out.println("Conteudo :" + getConteudo());
        System.out.println("Tamanho :" + getTamanho());
    }

    public void editar(Scanner scanner){
        System.out.println("Edite o Arquivo");
        System.out.println("Digite o novo nome: ");
        setNome(scanner.nextLine());
        System.out.println("Altere seu conteúdo: ");
        setConteudo(scanner.nextLine());
        atualizarTamanho();
    }

    public void limpar(){
        System.out.println("Limpando o conteudo do arquivo");
        setNome("");
        setConteudo("Vazio");
        setTamanho("");
    }

    public void renomear(){

    }

    private void atualizarTamanho() {
        setTamanho(getConteudo().length() * 8 + " bits");
    }
}
