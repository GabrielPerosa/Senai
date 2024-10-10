import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        int[] vetor = {2, 4, 6, 8, 10, 12, 14, 16, 18, 20};
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite um número inteiro para buscar no vetor: ");
        int numero = scanner.nextInt();

        boolean encontrado = false;


        for (int i = 0; i < vetor.length; i++) {
            if (vetor[i] == numero) {
                System.out.println("O número " + numero + " foi encontrado na posição " + i + " do vetor.");
                encontrado = true;
                break;
            }


            if (!encontrado) {
                System.out.println("Valor não encontrado");
            }
        }
    }
}