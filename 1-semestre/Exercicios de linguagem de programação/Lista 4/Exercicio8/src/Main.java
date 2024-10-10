public class Main {
    public static void main(String[] args) {
        int[][] matriz = {
                {1, 2, 3, 4, 5},
                {5, 10, 15, 20, 25},
                {25, 26, 27, 28, 29},
                {29, 30, 32, 34, 35},
                {35, 45, 55, 65, 75}
        };

        System.out.println("Diagonal Principal:");
        for (int i = 0; i < matriz.length; i++) {
            System.out.print(matriz[i][i] + " ");
        }
        System.out.println();
    }
}