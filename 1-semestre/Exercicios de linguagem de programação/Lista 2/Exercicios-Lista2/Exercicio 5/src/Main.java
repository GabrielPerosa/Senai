import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite o primeiro número: ");
        double n1 = scanner.nextDouble();

        System.out.print("Digite o segundo número: ");
        double n2 = scanner.nextDouble();

        double media = (n1+n2)/2;

        //A se a média >= 8.5• B se a média >= 7 e média < 8.5• C se a média >= 5 e média < 7• D se a média < 5

        if (media>=8.5){
            System.out.print("Sua media foi A");
        }

        else if (media>=7 && media<8.5){
            System.out.print("Sua media foi B");
        }

        else if (media>=5 && media<7){
            System.out.print("Sua media foi C");
        }

        else if (media<5){
            System.out.print("Sua media foi D");
        }
    }
}
