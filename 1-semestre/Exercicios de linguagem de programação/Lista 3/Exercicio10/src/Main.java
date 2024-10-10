import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite um valor para a sequência de Fibonacci: ");
        int n = scanner.nextInt();

        int termoAnterior = 0;
        int termoAtual = 1;

        System.out.println("Sequência de Fibonacci até o termo " + n + ": ");

        for (int i = 1; i <= n; i++) {
            System.out.println(termoAnterior + " ");

            int proximoTermo = termoAnterior + termoAtual;
            termoAnterior = termoAtual;
            termoAtual = proximoTermo;
        }
    }
}