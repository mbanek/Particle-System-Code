//Creating the Particle System
class Particle {
  PVector loc, vel, acc;
  float size;
  int life;
  float trans=100;
  
//Giving each particle a seperate identity and movement as well
  Particle(float x, float y) {
    loc = new PVector(x, y);
    vel = new PVector(random(-2, 2), random(-2, 2));
    acc = new PVector(0, .05);
    size = random(5,20);
    life = 150;
  }
//Creating the balls and giving them an "astheticly pleasing" appearance
  void display() { if (mousePressed == true) {
    fill(#FFFFFF,trans);
  } else {
    fill(#3B2C1F,trans);
  }

    trans-=.5;
    noStroke();
    strokeWeight(2);
    ellipse(loc.x, loc.y, size, size);
  }

  void update() {
    vel.add(acc);
    loc.add(vel);
    life--;
  }
}

