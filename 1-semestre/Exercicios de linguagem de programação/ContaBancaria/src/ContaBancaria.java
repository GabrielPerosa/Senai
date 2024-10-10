public class ContaBancaria {
    private int numero;
    private double saldo;
    private String titular;

    public void depositar(double valor){
        if(valor>0)
            this.saldo += valor;

    }
    public void sacar(double valor){
        if(valor>0 && saldo>=valor)
            this.saldo-=valor;
    }

    public ContaBancaria(int numero, String titular) {
        this.numero = numero;
        this.saldo = 0;
        this.titular = titular;
    }

    public double getSaldo() {
        return this.saldo;
    }
}
