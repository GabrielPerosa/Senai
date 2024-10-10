public class Main {
    public static void main(String[] args) {

        ContaBancaria c1 = new ContaBancaria(2221, "Perosa");
        c1.depositar(100);
        System.out.println(c1.getSaldo());
        c1.sacar(13.40);
        System.out.println(c1.getSaldo());

    }
}