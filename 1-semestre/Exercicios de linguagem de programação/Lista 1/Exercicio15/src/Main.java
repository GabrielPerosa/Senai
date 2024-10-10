import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite o raio do cilindro: ");
        double raio = scanner.nextDouble();

        System.out.print("Digite a altura do cilindro: ");
        double altura = scanner.nextDouble();

        // Calcula o volume do cilindro usando a fórmula: π * raio^2 * altura
        double volume = Math.PI * Math.pow(raio, 2) * altura;

        System.out.println("O volume do cilindro é: " + volume);
    }
}
