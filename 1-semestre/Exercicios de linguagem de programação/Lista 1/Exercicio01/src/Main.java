import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        int number,result;
        Scanner in = new Scanner(System.in);
        System.out.println("Digite o numero inteiro: ");
        number = in.nextInt();
        result = 2*number;
        System.out.println(" O dobro do numero é: " + result);
    }
}