import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite o primeiro número inteiro: ");
        int primeiroNumero = scanner.nextInt();

        System.out.print("Digite o segundo número inteiro: ");
        int segundoNumero = scanner.nextInt();

        if (primeiroNumero > segundoNumero) {
            System.out.println("O primeiro número (" + primeiroNumero + ") é maior que o segundo número (" + segundoNumero + ").");
        } else if (segundoNumero > primeiroNumero) {
            System.out.println("O segundo número (" + segundoNumero + ") é maior que o primeiro número (" + primeiroNumero + ").");
        } else {
            System.out.println("Os números são iguais.");
        }
    }
}
