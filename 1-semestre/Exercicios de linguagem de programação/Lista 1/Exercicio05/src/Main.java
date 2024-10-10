import java.util.Scanner;
import java.lang.Math;

public class Main {
    public static void main(String[] args) {

        double km, metros;

        Scanner in = new Scanner(System.in);
        System.out.println(" Qual a velocidade de Km/h : ");
        km= in.nextDouble();
        metros = km / 3.6 ;

        System.out.println("A velocidade de metros/s é : " + metros);
    }
}