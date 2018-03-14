
//PVector pos = new Pvector(float x, float y);
boolean touch = false;

Ball b;

void setup() {
  size(800, 800);
  b = new Ball();
}

void draw() {
  background(255);
  
  stroke(0);
  strokeWeight(2);
  rect(b.position.x-25, height-10, 50, 5);
  
  PVector gravity = new PVector(0, 0.3);
  
  PVector bounce = PVector.fromAngle(random(30, 150));
  bounce.mult(10);
  if (b.position.y > height-20) {
    b.position.y = height-20;
    b.velocity.y *= -1;
    b.applyForce(bounce);
  }
  b.applyForce(gravity);
  
  b.update();
  b.display();
  b.checkEdges();
}