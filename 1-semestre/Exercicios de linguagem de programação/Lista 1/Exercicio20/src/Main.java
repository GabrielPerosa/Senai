import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite a primeira raiz (x1): ");
        double x1 = scanner.nextDouble();

        System.out.print("Digite a segunda raiz (x2): ");
        double x2 = scanner.nextDouble();

        double a = 1;
        double b = -(x1 + x2);
        double c = x1 * x2;

        System.out.println("A equação do segundo grau é: " + a + "x^2 + " + b + "x + " + c + " = 0");
    }
}
