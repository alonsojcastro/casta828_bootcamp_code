class Square{

  // define data about my class

  float x;
  float y;
  float radius;

  //colors
  float r, g, b;

  Square(float x_, float y_, float radius_, float r_, float g_, float b_) {
    x = x_;
    y = y_;
    radius = radius_;

    r = r_;
    g = g_;
    b = b_;
  }
  void descend() {
    y++;
  } 

  void display() {
    stroke(222);
    strokeWeight(2);
    fill(r, g, b);
    rect(x, y, 2*radius, 2*radius);
  }

  void top() {
    if (y < radius) {
      y = radius;
    }
  }
}