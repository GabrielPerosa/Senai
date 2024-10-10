import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite a distância em quilômetros: ");
        double distanciaQuilometros = scanner.nextDouble();

        // 1 quilômetro é equivalente a aproximadamente 0.621371 milhas
        double distanciaMilhas = distanciaQuilometros * 0.621371;

        System.out.println("A distância em milhas é: " + distanciaMilhas);
    }
}
