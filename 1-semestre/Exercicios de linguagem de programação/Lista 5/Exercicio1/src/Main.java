public class Main {
    public static void main(String[] args) {
        int n = 4;
        int resultado = sum(n);
        System.out.println("A soma dos números de 1 até " + n + " é: " + resultado);
    }

    static int sum(int n) {

        int soma = 0;
        for (int i = 1; i <= n; i++) {
            soma += i;
        }
        return soma;
    }
}