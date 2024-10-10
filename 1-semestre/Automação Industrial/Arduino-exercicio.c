int vermelho = 7;
int amarelo = 6;
int verde = 5;
int azul = 4;
int laranja = 3;
int branco = 2; 

String opcao = "" ;


//Iniciar o Monitor Serial
    Serial.begin (9600);
    Serial.println("Inicializando...");
    delay(5000);
    Serial.println("Sistema Pronto!");

//vai definindo todos como output, quando passar cada i.
void setup (){
    for(int i=2; i<7;i++){
        pinMode (i, OUTPUT);
        String valor = "Definindo pino: ";
        delay(2000);
        
    }
}
Void loop(){
        //criando uma mensagem para interação do usuário
        Serial.println("Pressione L para ligar");
        Serial.println("Pressione D para desligar");

        if(Serial.available() > 0){
            opcao = Serial.readString();

        Serial.println(opcao);
    }
    

    crescente();
    
}

void crescente(){
    //Ascende os leds de forma crescente
    for(int i=2;i<=7;i++){
        digitalWrite(i,1);
        delay(500);
        digitalWrite(i,0);
    }
}