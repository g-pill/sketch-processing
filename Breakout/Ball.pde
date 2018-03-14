class Ball {
  
  PVector position; 
  PVector velocity;
  PVector acceleration;
  float topspeed = 20;
  
  Ball() {
    position = new PVector(random(width), random(height));
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }
  
  void update() {
    velocity.add(acceleration);
    velocity.limit(topspeed);
    position.add(velocity);
    acceleration.mult(0);
  }
  
  void applyForce(PVector force) {
    acceleration.add(force);
  }
  
  void display() {
    fill(0);
    ellipse(position.x, position.y, 20, 20);
  }
  
  void checkEdges() {
    if (position.x < 10) {
      position.x = 10;
      velocity.x *= -1;
    } else if (position.x > width-10) {
      position.x = width-10;
      velocity.x *= -1;
    }
    if (position.y < 10) {
      position.y = 10;
      velocity.y *= -1;
    } 
  }
}