import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("Digite o valor da compra:");
        double valorCompra = scanner.nextDouble();

        System.out.println("Escolha a forma de pagamento:");
        System.out.println("Menu:");
        System.out.println("1. Débito");
        System.out.println("2. Crédito");
        System.out.println("3. Pix");

        int formaPagamento = scanner.nextInt();

        double totalPagar = 0;

        switch (formaPagamento) {
            case 1:
                totalPagar = valorCompra * 0.95; // Desconto de 5% para pagamento em débito
                break;
            case 2:
                System.out.println("Digite o número de parcelas:");
                int parcelas = scanner.nextInt();
                if (parcelas <= 4) {
                    totalPagar = valorCompra * (1 + parcelas * 0.02); // Juros simples de 2% para até 4 parcelas
                } else {
                    totalPagar = valorCompra * 1.05; // Juros simples de 5% para mais de 4 parcelas
                }
                break;
            case 3:
                totalPagar = valorCompra * 0.90; // Desconto de 10% para pagamento via Pix
                break;
            default:
                System.out.println("Opção de pagamento inválida.");
                return;
        }

        System.out.println("Total a pagar: " + totalPagar);
    }
}