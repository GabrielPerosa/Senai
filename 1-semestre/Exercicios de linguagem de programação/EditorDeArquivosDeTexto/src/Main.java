import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        Arquivo arquivo = new Arquivo();

        arquivo.setNome("Trabalho do caina");
        arquivo.setConteudo("vazio");
        arquivo.setTamanho("");

        arquivo.abrir();
        arquivo.editar(scanner);
        arquivo.abrir();
        arquivo.limpar();
        arquivo.abrir();



    }
}