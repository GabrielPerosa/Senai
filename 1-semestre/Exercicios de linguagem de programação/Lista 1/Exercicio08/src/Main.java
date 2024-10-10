import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite a medida em polegadas: ");
        double medidaPolegadas = scanner.nextDouble();

        // 1 polegada é equivalente a 25.4 milímetros
        double medidaMilimetros = medidaPolegadas * 25.4;

        System.out.println("A medida em milímetros é: " + medidaMilimetros);
    }
}
