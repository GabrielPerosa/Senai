import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite o valor da base do triângulo retângulo: ");
        double base = scanner.nextDouble();

        System.out.print("Digite o valor da altura do triângulo retângulo: ");
        double altura = scanner.nextDouble();

        double area = (base * altura) / 2;

        System.out.println("A área do triângulo retângulo é: " + area);
    }
}
