import java.util.Scanner;
public class Main {
    public static void main(String[] args) {
        int[] vetor1 = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
        int[] vetor2 = new int[vetor1.length];


        for (int i = 0; i < vetor1.length; i++) {
            vetor2[i] = vetor1[vetor1.length - 1 - i];
        }


        System.out.println("Vetor1:");
        for (int i = 0; i < vetor1.length; i++) {
            System.out.print(vetor1[i] + " ");
        }
        System.out.println();


        System.out.println("Vetor2:");
        for (int i = 0; i < vetor2.length; i++) {
            System.out.print(vetor2[i] + " ");
        }
        System.out.println();
    }
}