import java.util.Random;

public class Personagem {
    private String nome;
    private int vida, ataque, defesa;

    // Construtor
    public Personagem(String nome) {
        this.nome = nome;
        this.vida = 100;
        Random rand = new Random();
        this.ataque = rand.nextInt(11) + 20; // Valor entre 20 e 30
        this.defesa = rand.nextInt(6) + 10; // Valor entre 10 e 15
    }

    // Getters e Setters
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getVida() {
        return vida;
    }

    public void setVida(int vida) {
        this.vida = vida;
    }

    public int getAtaque() {
        return ataque;
    }

    public void setAtaque(int ataque) {
        this.ataque = ataque;
    }

    public int getDefesa() {
        return defesa;
    }

    public void setDefesa(int defesa) {
        this.defesa = defesa;
    }

    // Método ataque
    public void ataque(Personagem adversario) {
        int dano = this.ataque - adversario.getDefesa();
        if (dano > 0) {
            adversario.setVida(adversario.getVida() - dano);
        }
    }

    public static void main(String[] args) {
        // Exemplo de uso
        Personagem jogador = new Personagem("Jogador");
        Personagem monstro = new Personagem("Monstro");

        while (jogador.getVida() > 0 && monstro.getVida() > 0) {
            jogador.ataque(monstro);
            System.out.println(jogador.getNome() + " atacou " + monstro.getNome() + ". Vida do monstro: " + monstro.getVida());
            if (monstro.getVida() <= 0) {
                System.out.println(monstro.getNome() + " foi derrotado!");
                break;
            }

            monstro.ataque(jogador);
            System.out.println(monstro.getNome() + " atacou " + jogador.getNome() + ". Vida do jogador: " + jogador.getVida());
            if (jogador.getVida() <= 0) {
                System.out.println(jogador.getNome() + " foi derrotado!");
                break;
            }
        }
    }
}