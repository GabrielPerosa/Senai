import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite a base X:");
        int base = scanner.nextInt();

        System.out.print("Digite o expoente Y:");
        int expoente = scanner.nextInt();

        int resultado = Potencia(base, expoente);
        System.out.println("O resultado de " + base + " elevado a " + expoente + " é: " + resultado);
    }
    public static int Potencia(int base, int expoente) {
        int resultado = 1;
        for (int i = 0; i < expoente; i++) {
            resultado *= base;
        }
        return resultado;
    }
}