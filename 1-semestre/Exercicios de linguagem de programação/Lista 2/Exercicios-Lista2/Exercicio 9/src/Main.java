import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Digite o comprimento do primeiro lado:");
        int lado1 = scanner.nextInt();
        System.out.println("Digite o comprimento do segundo lado:");
        int lado2 = scanner.nextInt();
        System.out.println("Digite o comprimento do terceiro lado:");
        int lado3 = scanner.nextInt();

        if (isTriangulo(lado1, lado2, lado3)) {
            if (lado1 == lado2 && lado2 == lado3) {
                System.out.println("É um triângulo equilátero.");
            } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
                System.out.println("É um triângulo isósceles.");
            } else {
                System.out.println("É um triângulo escaleno.");
            }
        } else {
            System.out.println("Os lados fornecidos não formam um triângulo.");
        }
    }

    public static boolean isTriangulo(int lado1, int lado2, int lado3) {
        return (lado1 + lado2 > lado3) && (lado1 + lado3 > lado2) && (lado2 + lado3 > lado1);
    }
}