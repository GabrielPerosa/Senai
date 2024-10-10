import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        double numero;
        Scanner scanner = new Scanner(System.in);
        System.out.print("Digite um número real: ");
        numero = scanner.nextDouble();

        if (numero >= 0) {
            double raizQuadrada = Math.sqrt(numero);
            System.out.println("A raiz quadrada de " + numero + " é " + raizQuadrada + ".");
        } else {
            System.out.println("Valor inválido!");
        }
    }
}
