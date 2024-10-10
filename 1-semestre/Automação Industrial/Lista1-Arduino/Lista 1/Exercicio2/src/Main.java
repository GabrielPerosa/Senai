const int a = 3;
const int b = 4;
const int c = 5;
const int d = 6;
const int e = 7;
const int f = 8;
const int g = 9;

// Pino do botão
const int botao = 2;

// Define os padrões de cada número (0 a 9) nos segmentos do display
const int digitos[10][7] = {
        {1, 1, 1, 1, 1, 1, 0}, // 0
        {0, 1, 1, 0, 0, 0, 0}, // 1
        {1, 1, 0, 1, 1, 0, 1}, // 2
        {1, 1, 1, 1, 0, 0, 1}, // 3
        {0, 1, 1, 0, 0, 1, 1}, // 4
        {1, 0, 1, 1, 0, 1, 1}, // 5
        {1, 0, 1, 1, 1, 1, 1}, // 6
        {1, 1, 1, 0, 0, 0, 0}, // 7
        {1, 1, 1, 1, 1, 1, 1}, // 8
        {1, 1, 1, 1, 0, 1, 1}  // 9
        };

        const int pinosDisplay[7] = {3, 4, 5, 6, 7, 8, 9}; // Pinos dos segmentos a g

void setup() {
    pinMode(botao, INPUT); // Define o pino do botão como entrada
    Serial.begin(9600); // Inicia a comunicação serial para depuração
}
// Função principal
void loop() {
    if (digitalRead(botao) == HIGH) { // Verifica se o botão foi pressionado
        for (int i = 9; i <= 9; i--) { // Loop de 9 a 0


            exibeNumero(i); // Exibe o número atual
            delay(1000); // Aguarda 1 segundo
            if (i == 0) { // Se o número for 0
                return; // Encerra a função loop() e retorna
            }
        }
    }
}

// Função para exibir um número no display de 7 segmentos
void exibeNumero(int numero) {
    for (int i = 0; i < 7; i++) {
        digitalWrite(3 + i, digitos[numero][i]); // Define o estado do pino de acordo com o padrão do número
    }
}