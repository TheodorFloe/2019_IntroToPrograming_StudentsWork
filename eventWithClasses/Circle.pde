class Circle {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float diameter;
  float radius = diameter/2;
  float state;

  float R;
  float G;
  float B;




  //  circle = new Circle(random(width), random(height), random(-3,3), random(-3,3), 50);
  Circle(float x, float y, float xSpeed, float ySpeed, float diameter, float R, float G, float B, float state) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.diameter = diameter;
    this.state = state;
    this.R=R;
    this.G=G;
    this.B=B;
  }


  void move() {
    x += xSpeed;
    if (x <= radius || x >= width-radius) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y <= radius || y >= height-radius) {
      ySpeed *= -1;
    }
  }

  void overlap() {
    float substract = 20;
    
    float xC = circle.x - substract;
    float yC = circle.y - substract;
    float xR = rectangle.x - substract;
    float yR = rectangle.y - substract;
    
    float d=dist(xC, yC, xR, yR);
    if (d<=diameter) {
      circle.R=random(maxColor);
      circle.G=random(maxColor);
      circle.B=random(maxColor);
      rectangle.R=random(maxColor);
      rectangle.G=random(maxColor);
      rectangle.B=random(maxColor);
    }
  }


  void display() {
    fill(R, G, B);
    ellipse(x, y, diameter, diameter); 

  }
}
