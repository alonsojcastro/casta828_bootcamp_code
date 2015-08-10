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

  //myStress = loadImage("happiness_stress");//get error
  //myStress.resize(0, 220);//Could not find a method to load happiness_stress
                          //Could not run the sketch (Target VM failed to initialize).
                          //Make sure that you haven't set the maximum available memory too high.
                          //For more information, read revisions.txt and Help → Troubleshooting.
}


void draw() {
  background(iPhone);

  noTint();
  image(iPhone, 0, 0);

  fill(0);
  stroke(255);
  ellipse(80, 300, 50, 50);

  if ((mousePressed) && (mouseX < 90) && (mouseX > 75) && (250 < mouseY) && (mouseY < 350)) {
    for (int i=0; i<7; i++);
    
    tint(255, 255, 255, a);
    image(mySleep, 240, 192);
    if (a<255) {
      a++;
    }
  }
}