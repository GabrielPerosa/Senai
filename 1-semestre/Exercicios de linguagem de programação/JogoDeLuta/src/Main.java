import java.util.Random;
import java.util.Scanner;

public class Main {
    private String nome;
    private int vida, ataque, defesa;

    // Construtor
    public Main(String nome) {
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
    public void ataque(Main adversario) {
        int dano = this.ataque - adversario.getDefesa();
        if (dano > 0) {
            adversario.setVida(adversario.getVida() - dano);
            System.out.println(this.nome + " atacou " + adversario.getNome() + " causando " + dano + " de dano.");
        } else {
            System.out.println(this.nome + " atacou " + adversario.getNome() + " mas não causou dano.");
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Criação dos personagens
        System.out.println("Digite o nome do jogador 1:");
        String nomeJogador1 = scanner.nextLine();
        Main jogador1 = new Main(nomeJogador1);

        System.out.println("Digite o nome do jogador 2:");
        String nomeJogador2 = scanner.nextLine();
        Main jogador2 = new Main(nomeJogador2);

        // Loop de batalha
        while (jogador1.getVida() > 0 && jogador2.getVida() > 0) {
            jogador1.ataque(jogador2);
            if (jogador2.getVida() <= 0) {
                System.out.println(jogador2.getNome() + " foi derrotado!");
                break;
            }

            jogador2.ataque(jogador1);
            if (jogador1.getVida() <= 0) {
                System.out.println(jogador1.getNome() + " foi derrotado!");
                break;
            }

            System.out.println(jogador1.getNome() + " tem " + jogador1.getVida() + " de vida restante.");
            System.out.println(jogador2.getNome() + " tem " + jogador2.getVida() + " de vida restante.");
        }

        scanner.close();
    }
}