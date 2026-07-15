import processing.serial.*;

Serial myPort;

String data = "";

int angle;
int distance;

void setup()
{
  size(1200, 700);

  smooth();

  println(Serial.list(8));

  myPort = new Serial(this, Serial.list(8)[0], 9600);

  myPort.bufferUntil('.');
}

void draw()
{
  background(0);

  drawRadar();
  drawObject();
}

void serialEvent(Serial myPort)
{
  data = myPort.readStringUntil('.');

  if (data != null)
  {
    data = trim(data);

    data = data.substring(0, data.length() - 1);

    int commaIndex = data.indexOf(',');

    angle = int(data.substring(0, commaIndex));

    distance = int(data.substring(commaIndex + 1));
  }
}

void drawRadar()
{
  pushMatrix();

  translate(width / 2, height);

  stroke(0, 255, 0);
  noFill();

  arc(0, 0, 1000, 1000, PI, TWO_PI);
  arc(0, 0, 750, 750, PI, TWO_PI);
  arc(0, 0, 500, 500, PI, TWO_PI);
  arc(0, 0, 250, 250, PI, TWO_PI);

  for (int i = 0; i <= 180; i += 30)
  {
    float x = 500 * cos(radians(i));
    float y = -500 * sin(radians(i));

    line(0, 0, x, y);
  }

  popMatrix();
}

void drawObject()
{
  if (distance > 0 && distance < 40)
  {
    pushMatrix();

    translate(width / 2, height);

    stroke(255, 0, 0);
    strokeWeight(8);

    float objectDistance = map(distance, 0, 40, 0, 500);

    float x = objectDistance * cos(radians(angle));
    float y = -objectDistance * sin(radians(angle));

    point(x, y);

    popMatrix();
  }
}
