import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite o raio do cone: ");
        double raio = scanner.nextDouble();

        System.out.print("Digite a altura do cone: ");
        double altura = scanner.nextDouble();

        // Calcula o volume do cone usando a fórmula: π * raio^2 * (altura/3)
        double volume = Math.PI * Math.pow(raio, 2) * (altura / 3.0);

        System.out.println("O volume do cone é: " + volume);
    }
}
