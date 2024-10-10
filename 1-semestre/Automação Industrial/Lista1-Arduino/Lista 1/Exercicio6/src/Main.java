// Declaração de Variáveis
int vermelho1 = 3;
int amarelo1 = 4;
int verde1 = 5;
int botao = 2; // Pino do botão

int estadoBotao = 0;
int estadoAnterior = 0;

//void Setup
void setup() {
    pinMode(vermelho1, OUTPUT);
    pinMode(amarelo1, OUTPUT);
    pinMode(verde1, OUTPUT);
    pinMode(botao, INPUT_PULLUP); // Habilita resistor de pull-up interno
}

//Void Loop
void loop() {
    estadoBotao = digitalRead(botao); // Lê o estado do botão

    // Verifica se houve uma mudança de estado no botão
    if (estadoBotao != estadoAnterior) {
        delay(50); // Aguarda um pequeno intervalo para evitar oscilações

        // Se o botão foi pressionado
        if (estadoBotao == LOW) {
            alternarLEDs(); // Chama a função para alternar os LEDs
        }
    }

    estadoAnterior = estadoBotao; // Atualiza o estado anterior do botão
}

// Função para alternar os LEDs
void alternarLEDs() {
    static int ledAtual = vermelho1; // Variável para controlar qual LED está aceso

    // Desliga todos os LEDs
    digitalWrite(vermelho1, LOW);
    digitalWrite(amarelo1, LOW);
    digitalWrite(verde1, LOW);

    // Liga o próximo LED e atualiza a variável ledAtual
    if (ledAtual == vermelho1) {
        digitalWrite(amarelo1, HIGH);
        ledAtual = amarelo1;
    } else if (ledAtual == amarelo1) {
        digitalWrite(verde1, HIGH);
        ledAtual = verde1;
    } else {
        digitalWrite(vermelho1, HIGH);
        ledAtual = vermelho1;
    }
}