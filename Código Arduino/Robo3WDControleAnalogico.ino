#include "BasicLinearAlgebra.h"
#include <math.h>

// Classe de controle dos motores
class ctrlMotor{ 
  public:
    int pin_1, pin_2, enable;
  
    void setPinConfig(int p1, int p2, int en){ // função de configuração dos pinos
      pin_1 = p1;
      pin_2 = p2;
      enable = en;
      
      pinMode(pin_1, OUTPUT);
      pinMode(pin_2, OUTPUT);
      pinMode(enable, OUTPUT);
    }
  
    void Move(float uk){ // Gira motor no sentido horário
      int PWM;

      PWM = map(uk, -300, 300, -255, 255);
      if (PWM>0){
        digitalWrite(pin_2, LOW);
        digitalWrite(pin_1, HIGH);
      }
      else if (PWM<0){
        digitalWrite(pin_1, LOW);
        digitalWrite(pin_2, HIGH);
      }
      else{
        digitalWrite(pin_1, HIGH);
        digitalWrite(pin_2, HIGH);
      }
      PWM = abs(PWM);
      if(PWM>255)
        PWM = 255;
      analogWrite(enable, PWM);
    }
};

ctrlMotor Mot1, Mot2, Mot3;
float qX = 0, qY = 0, qtheta = 0;
float theta = 0;
float L = 0.08;        // Distância da roda em CM
float r = 0.25;    // Raio da roda em CM
float Msg[2] = {140, 140}; // Recebe dados do HC-06

// Matriz de Rotação
BLA::Matrix<3, 3> R = { cos(theta), -sin(theta),  0,
                        sin(theta), cos(theta),   0,
                        0,          0,            1};

// Cinemática Direta
BLA::Matrix<3, 3> J = { -r/sqrt(3), 0,          r/sqrt(3),
                        r/3.,      -(2*r)/3.,   r/3.,
                        r/(3*L),   r/(3*L),     r/(3*L)};

BLA::Matrix<3, 3> RJ;
BLA::Matrix<3, 1> qPose; // Matriz de estados 
BLA::Matrix<3, 1> Uk; // Matriz de entrada

void setup() {
  Mot1.setPinConfig(7,8,11);
  Mot2.setPinConfig(5,6,10);
  Mot3.setPinConfig(4,3,9);

  Serial.begin(9600);
}

void loop() {
  // Dir 1
  
  qX = Msg[0] - 140;
  qY = Msg[1] - 140;
  qY *= -1;
  qtheta = 0;


  /*Serial.print("X: ");
  Serial.print(qX);
  Serial.print(" Y: ");
  Serial.println(qY);*/
  //bTheta = M_PI/2;

  qPose = {qX, qY, qtheta};
  RJ = R*J;
  
  Invert(RJ);
  
  Uk = RJ*qPose;

  /*Serial.print("Uk = [");
  Serial.print(Uk(0));
  Serial.print(", ");
  Serial.print(Uk(1));
  Serial.print(", ");
  Serial.print(Uk(2));
  Serial.println("]");*/
  
  Mot1.Move(Uk(0));
  Mot2.Move(Uk(1));
  Mot3.Move(Uk(2));
  
}

void serialEvent(){

  int i = 0; 
  while((Serial.available() > 0) && (i < 2))
  {
    Msg[i] = Serial.read();
    i++;
  }  

}
