//Hey Regina I'm sorry couldn't get as creative as before.
//I was trying to make verteces that created a loading circle.

float r = 100;
float theta = 0;

void setup() {
  size(500,500);
  background(0);
  smooth();
}

void draw() {
  fill(0,10);
  rect(0,0,width,height);
  
  float x = r * cos(theta);
  float y = r * sin(theta);
  int weight = int(random(12, 25));
  strokeWeight(weight);
  float sideIncrement = 0.1;
  float shapeRadius = width/4;
  int numberOfSides = int(random(2, 8));
  beginShape();
  while (sideIncrement < TWO_PI) {
    
  float xPos = sin(sideIncrement)*shapeRadius;
  float yPos = cos(sideIncrement)*shapeRadius;
  vertex(xPos+width*0.5, yPos+height*0.5);
  sideIncrement += TWO_PI/numberOfSides;
  }
  endShape(CLOSE);
  
  
  fill(0,255,255);
  noStroke();
  ellipse(x+width/2, y+height/2, 50, 50);
  
  theta += 0.025;
}