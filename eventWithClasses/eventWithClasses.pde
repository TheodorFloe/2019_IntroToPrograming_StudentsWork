Circle circle;
Rectangle rectangle;

float state = 1;
float xStartC = random(width);
float yStartC = random(height);
float xStartR = random(width);
float yStartR= random(height);
float xSpeedC = random(-3, 3);
float ySpeedC = random(-3, 3);
float xSpeedR = random(-3, 3);
float ySpeedR = random(-3, 3);
float diameter = 50;
float maxColor = 255;



float R = random (maxColor);
float G = random (maxColor);
float B = random (maxColor);

void setup() {
  size(300, 300);
  circle = new Circle(xStartC, yStartC, xSpeedC, ySpeedC, diameter, R, G, B, state);
  
  rectangle = new Rectangle (xStartR, yStartR, xSpeedR, ySpeedR, diameter, R, G, B, state);

}


void draw() {
  background(maxColor);

  circle.move();
  circle.display();
  circle.overlap();
  
  rectangle.move();
  rectangle.display();
  
 }
