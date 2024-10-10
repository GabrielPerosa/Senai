import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite a velocidade inicial (m/s): ");
        double velocidadeInicial = scanner.nextDouble();

        System.out.print("Digite a aceleração (m/s²): ");
        double aceleracao = scanner.nextDouble();

        System.out.print("Digite o tempo de percurso (s): ");
        double tempo = scanner.nextDouble();

        // Calcula a velocidade final usando a fórmula: v = vi + at
        double velocidadeFinal = velocidadeInicial + (aceleracao * tempo);

        System.out.println("A velocidade final é: " + velocidadeFinal + " m/s");
    }
}
