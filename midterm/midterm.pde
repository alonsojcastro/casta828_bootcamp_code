//Global Variable
PImage myStress, mySleep, iPhone;
int y;
int a = 0;

void setup() {
  size(600, 600);
  iPhone = loadImage ("iphone.png");
  iPhone.resize(0, 600);

  mySleep = loadImage("happiness_sleep.png");
  mySleep.resize(0, 220);

  myStress = loadImage("happiness_stress.png");
  myStress.resize(0, 222);
}


void draw() {
  background(iPhone);

  noTint();
  image(iPhone, 0, 0);

  fill(0);
  stroke(255);
  ellipse(80, 300, 50, 50);

  if ((mousePressed) && (mouseX < 90) && (mouseX > 75) && (250 < mouseY) && (mouseY < 350)) {
    //if mouse is within a square on x-axis 75 and 90, and on y-axis 250 and 350.    
    for (int i=0; i<5; i++);
    //beginning of loop, evaluate if true, if not true then will not work, keep going    
    tint(255, 255, 255, a);
    image(mySleep, 240, 192);
    if (a<255) {
      a++;
    }
  }
  
  fill(125);
  stroke(255);
  ellipse(80, 400, 50, 50);

  if ((mousePressed) && (mouseX < 90) && (mouseX > 75) && (350 < mouseY) && (mouseY < 450)) {
    for (int i=0; i<7; i++);
    tint(255, 255, 255, a);
    image(myStress, 239, 190);
    if (a<255) {
      a++;
    }
  }
}