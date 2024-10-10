import java.util.Scanner;
import java.lang.Math;

public class Main {
    public static void main(String[] args) {

        double number, result;
        Scanner in = new Scanner(System.in);
        System.out.println(" Digite um numero : ");
        number = in.nextDouble();
        result = Math.pow(number,2);
        System.out.println("O quadrado do numero é: " + result);
    }
}
