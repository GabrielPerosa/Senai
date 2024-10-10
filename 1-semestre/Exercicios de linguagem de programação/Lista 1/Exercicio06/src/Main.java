import java.util.Scanner;
import java.lang.Math;

public class Main {
    public static void main(String[] args) {

        double km;
        double metros;
        Scanner in = new Scanner(System.in);
        System.out.println(" Qual a velocidade de m/s : ");
        metros= in.nextDouble();
        km = metros * 3.6 ;

        System.out.println("A velocidade de Km/h é : " + km);
    }
}