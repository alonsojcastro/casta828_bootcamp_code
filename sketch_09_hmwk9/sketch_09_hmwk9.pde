//Global Variables //<>//
int xPos;
int yPos;
int colorCounter;

void setup(){
  size (400,400);
  background (100,25,50);  
  xPos = width/2;
  yPos = height/2;
}

void draw(){
  fill(5-colorCounter, 255-colorCounter,255);
  fill(random(255), random(255), random(255));
  rectMode(CENTER);
  rect(xPos,yPos,280,280);
  ellipse (mouseX, mouseY, 80, 80);
}
// hoping to add music //<>//