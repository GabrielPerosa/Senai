import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite o primeiro número: ");
        int n1 = scanner.nextInt();

        System.out.print("Digite o segundo número: ");
        int n2 = scanner.nextInt();

        int result = n1+n2;

        int media = result/2;

        if (media>=50){
            System.out.println ("Aprovado");

        }
        else{
            System.out.print("Digite a nota da prova de recuperação: ");
            int nota_recuperacao = scanner.nextInt();
            int result2 = media+nota_recuperacao;
            int media2 = result2/2;

            if (media2>=50){
                System.out.println ("Aprovado");
            }

            else{
                System.out.println ("Reprovado");
            }
        }
    }
}
