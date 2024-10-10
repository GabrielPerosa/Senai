import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        int[][] m5 = {
                {-1, -2, -3, -4, -5},
                {-5, -10, -15,-20, -25},
                {-25,-26, -27, -28, -29},
                {-29, -30, -32, -34, -35},
                {-35, -45, -55, -5, -75}
        };

        int maxRowSum = Integer.MIN_VALUE;
        int maxColSum = Integer.MIN_VALUE;


        for (int i = 0; i < m5.length; i++) {
            int rowSum = 0;
            for (int j = 0; j < m5[i].length; j++) {
                rowSum += m5[i][j];
            }
            if (rowSum > maxRowSum) {
                maxRowSum = rowSum;
            }
        }


        for (int j = 0; j < m5[0].length; j++) {
            int colSum = 0;
            for (int i = 0; i < m5.length; i++) {
                colSum += m5[i][j];
            }
            if (colSum > maxColSum) {
                maxColSum = colSum;
            }
        }


        System.out.println("Maior soma entre as linhas: " + maxRowSum);
        System.out.println("Maior soma entre as colunas: " + maxColSum);
    }
}
