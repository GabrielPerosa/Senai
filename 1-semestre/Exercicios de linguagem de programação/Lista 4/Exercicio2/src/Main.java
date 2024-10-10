import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        int [] numeros = {2,4,6,8,10,12,14,16,18,20};
        Scanner in = new Scanner(System.in);

        for (int i = 0; i < numeros.length; i++) {
            if (i % 2 == 0) {
                numeros[i] += 2;
            } else {
                numeros[i] *= 2;
            }
        }

        System.out.println("Vetor modificado:");
        for (int i = 0; i < numeros.length; i++) {
            System.out.println(numeros[i]);
        }
    }
}