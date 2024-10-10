import java.util.Scanner;
public class Main
{
    public static void main(String[] args) {

        System.out.println();

        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite um numero inteiro de 5 à 9: ");

        int n1 = scanner.nextInt();

        if(n1>=5 && n1<=9){
            System.out.print("Sua opção foi:" + n1);
        }

        else if(n1<5 || n1>9){
            System.out.print("Opção invalida");
        }
    }
}
