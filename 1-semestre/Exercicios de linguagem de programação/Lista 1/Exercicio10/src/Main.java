import java.util.Scanner;

public class
Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite a distância em milhas: ");
        double distanciaMilhas = scanner.nextDouble();

        // 1 milha é equivalente a aproximadamente 1.60934 quilômetros
        double distanciaQuilometros = distanciaMilhas * 1.60934;

        System.out.println("A distância em quilômetros é: " + distanciaQuilometros);
    }
}
