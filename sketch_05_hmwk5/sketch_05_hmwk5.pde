//Global Variables

int fillColor;
int circleX;
int circleY;
PImage myImage;
int winSize = 500;

void setup() {
  size(500, 500);
  myImage = loadImage("kitten.png");
}

void draw() {
  
  imageMode(CENTER);
  image(myImage,mouseX,mouseY);

  for (int x = 0; x < 50; x++) {
    for (int y = 0; y < 50; y++) {

      //Pseudo Code
      //make the x, y coordinates of my ellipses
      //pass information from the draw loop to my function
      setCircleCoordinate(x, y);

      //set color by using fill
      setFillRelativeToMouse();

      //draw ellipses
      drawOneCircle();
    }
  }
}
//ending the draw loop

void setCircleCoordinate(int x, int y) {
  circleX = 5+(x*10);
  circleY = 5+(y*10);
}

void  setFillRelativeToMouse() {

  fillColor = int(map(dist(mouseX, mouseY, circleX, circleY), 0,250,255,0));
  
  if(fillColor <=0){
    fillColor=0;
  }
  fill(fillColor);
  noStroke();
  
}

  void drawOneCircle() {
  ellipse(circleX, circleY, 10, 10);
}