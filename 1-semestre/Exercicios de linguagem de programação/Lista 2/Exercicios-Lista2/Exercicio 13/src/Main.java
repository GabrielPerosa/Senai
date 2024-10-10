import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Menu:");
        System.out.println("Escolha a forma geométrica:");
        System.out.println("1. Círculo");
        System.out.println("2. Triângulo Retângulo");
        System.out.println("3. Retângulo");

        int escolha = scanner.nextInt();

        switch (escolha) {
            case 1:
                System.out.println("Digite o raio do círculo:");
                double raio = scanner.nextDouble();
                double areaCirculo = Math.PI * raio * raio;
                double perimetroCirculo = 2 * Math.PI * raio;
                System.out.println("Área do círculo: " + areaCirculo);
                System.out.println("Perímetro do círculo: " + perimetroCirculo);
                break;
            case 2:
                System.out.println("Digite a base do triângulo retângulo:");
                double base = scanner.nextDouble();
                System.out.println("Digite a altura do triângulo retângulo:");
                double altura = scanner.nextDouble();
                double areaTriangulo = (base * altura) / 2;
                double perimetroTriangulo = base + altura + Math.sqrt(base * base + altura * altura);
                System.out.println("Área do triângulo retângulo: " + areaTriangulo);
                System.out.println("Perímetro do triângulo retângulo: " + perimetroTriangulo);
                break;
            case 3:
                System.out.println("Digite o comprimento do retângulo:");
                double comprimento = scanner.nextDouble();
                System.out.println("Digite a largura do retângulo:");
                double largura = scanner.nextDouble();
                double areaRetangulo = comprimento * largura;
                double perimetroRetangulo = 2 * (comprimento + largura);
                System.out.println("Área do retângulo: " + areaRetangulo);
                System.out.println("Perímetro do retângulo: " + perimetroRetangulo);
                break;
            default:
                System.out.println("Opção inválida.");
        }
    }
}