public class Carro {
    private String cor;
    private int posX;
    private int posY;
    private int largura;
    private int altura;
    //construtor
    public Carro(String cor, int posX, int posY, int largura, int altura){
        this.cor=cor;
        this.posX=posX;
        this.posY=posY;
        this.largura=largura;
        this.altura=altura;
    }

    //metodos
    public void andarFrente(){
        if(posY>0)
        posY--;
    }
    public void andarRe(){
        if(posY<1080-altura)
        posY++;
    }
    public void andarDireita(){
        if(posX<1920-altura)
            posY++;
    }
    public void andarEsquerda(){
        if(posX>0)
            posY--;
    }

    @Override
    public String toString() {
        return "carro{" +
                "cor='" + cor + '\'' +
                ", posX=" + posX +
                ", posY=" + posY +
                ", largura=" + largura +
                ", altura=" + altura +
                '}';
    }
}
