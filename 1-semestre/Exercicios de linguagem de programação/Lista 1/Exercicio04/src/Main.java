import java.util.Scanner;
import java.lang.Math;

public class Main {
    public static void main(String[] args) {

        double n1, n2, n3, result;

        Scanner in = new Scanner(System.in);
        System.out.println(" Digite um numero : ");
        n1= in.nextDouble();
        n2= in.nextDouble();
        n3 = n1 + n2;
        result = n3 / 2;
        System.out.println("A media dos numeros é: " + result);
    }
}
