import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.println("Digite um numero inteiro maior que 0" );
        int n = in.nextInt();
        int resultado = fatorial(n);
        System.out.println("A soma do fatorial de " + n + " é: " + resultado);
    }

    static int fatorial(int n){
        int resultado=1;
        for(int i=n;i>1;i--)
            resultado*=i;
        return resultado;
    }
}