import java.util.Random;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        double value=0;

        Scanner in = new Scanner(System.in);

        System.out.println("Digite um numero: ");
        value+=in.nextDouble();

        System.out.println("Digite outro numero: ");
        value+=in.nextDouble();

        System.out.println("A media é = " + (value/2));
    }
}