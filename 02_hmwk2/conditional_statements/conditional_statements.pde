//Global Variables
int xPos;
int yPos;
int x = 0;
int y = 0;
int speed = 10;
int rectSize = 60;
int state = 0;
int dir = 1 ; // 0 = left , 1 = right
int colorCounter;
boolean mouseOnRight;
float angle;
float jitter;


void setup(){
  size(600,600);
  xPos = width/2;
  yPos = height/2;
  
}

void draw(){
  background (180, 100, 120);
   
  fill(120-colorCounter, 120-colorCounter,120);
  rectMode(CENTER);
  rect(xPos,yPos,280,280);
  
  stroke(100);
  strokeWeight(10);
  rectMode(CENTER);
  rect(x,yPos,rectSize,rectSize);
  
  if (second() % 2 == 0) {  
    jitter = random(-0.1, 0.1);
  }
  angle = angle + jitter;
  float c = cos(angle);
  translate(width/2, height/2);
  rotate(c);
  rect(0, 0, 180, 180);   
  
  if (x<width && dir == 1){
  x+=speed; // keep goig right
  if ( x == width){
    dir = 0;
  }
  }else if ( x > 0){
   x-=speed;
   if (x==0){
     dir = 1;//change dir
   }
  }if (mouseX >= width/2 && mouseOnRight == false) {
    mouseOnRight = true; 
    colorCounter+=5;
  } if (mouseX < width/2 && mouseOnRight == true) {
    mouseOnRight = false;
    colorCounter+=5;
  }
  
 
}
