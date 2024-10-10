import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite o primeiro número inteiro: ");
        int n1 = scanner.nextInt();
        System.out.print("Digite o segundo número inteiro: ");
        int n2 = scanner.nextInt();

        StringBuilder numerosNoIntervalo = new StringBuilder("Os numeros são: ");

        for (int i = n1; i <= n2; i++) {
            numerosNoIntervalo.append(i).append(" ");
        }
        System.out.println(numerosNoIntervalo.toString());
    }
}






//Peça para o usuário inserir dois números inteiros e
// exiba todos os números existentes entre os números digitados.