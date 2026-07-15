#include <Servo.h>

const int trigPin = 10;
const int echoPin = 11;

Servo radarServo;

long duration;
int distance;

void setup()
{
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);

  Serial.begin(9600);

  radarServo.attach(12);
}

void loop()
{
  for (int angle = 15; angle <= 165; angle++)
  {
    radarServo.write(angle);
    delay(30);

    distance = calculateDistance();

    Serial.print(angle);
    Serial.print(",");
    Serial.print(distance);
    Serial.print(".");
  }

  for (int angle = 165; angle >= 15; angle--)
  {
    radarServo.write(angle);
    delay(30);

    distance = calculateDistance();

    Serial.print(angle);
    Serial.print(",");
    Serial.print(distance);
    Serial.print(".");
  }
}

int calculateDistance()
{
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);

  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);

  digitalWrite(trigPin, LOW);

  duration = pulseIn(echoPin, HIGH);

  int measuredDistance = duration * 0.034 / 2;

  return measuredDistance;
}
