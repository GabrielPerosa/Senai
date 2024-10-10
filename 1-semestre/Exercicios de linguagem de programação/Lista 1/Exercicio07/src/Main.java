import java.util.Scanner;
import java.lang.Math;

public class Main {
    public static void main(String[] args) {

        double milimetro;
        double polegada;

        Scanner in = new Scanner(System.in);
        System.out.println(" Digite um valor em milimetro : ");
        milimetro = in.nextDouble();
        polegada = milimetro / 25.4 ;

        System.out.println("O valor em polegadas é : " + polegada);
    }
}