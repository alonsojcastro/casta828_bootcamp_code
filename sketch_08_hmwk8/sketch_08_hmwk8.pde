int numElements = 2000;
Square [] squares = new Square[numElements];

void setup() {
  size (500, 500);

  for (int i = 0; i < numElements; i++) {
    squares[i] = new Square(random(0,600), random(0,600), random(1,20), random(255), random(255), random(255));
  }
}

void draw() {
  background (11, 219, 212);
  
  for (int i = 0; i < numElements; i++) {
    squares[i].display();
    squares[i].descend();
    squares[i].top();
  }
}