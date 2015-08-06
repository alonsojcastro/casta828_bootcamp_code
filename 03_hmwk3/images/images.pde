
PImage myImage;
int winSize = 510;
float angle;
float jitter;

void setup(){
  background (355);
  size(winSize, winSize);
  
  myImage = loadImage("kitten.png");
}

void draw(){
  imageMode(CENTER);
  int r = mouseX/2;
  int g = 0;
  int b = mouseY/2;
  
  tint(r,g,b);
  
  image(myImage,mouseX,mouseY);
  
if (second() % 2 == 0) {  
    jitter = random(-0.1, 0.1);
  }
  angle = angle + jitter;
  float c = cos(angle);
  translate(width/3, height/3);
  rotate(c);
  image(myImage, 25, 25); 
}
