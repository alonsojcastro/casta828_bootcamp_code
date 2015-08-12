float[] circleX = new float [500]; //<>//
float[] circleY = new float [500];
float[] posX = new float[0];
float[] posY = new float[0];

int mouseClicks = 0;

void setup() {
  background(0);
  size(500, 500);
  smooth();


  //assign the array
  for (int i = 0; i < circleX.length; i++) {
    circleX[i] = random(0, 500);
    circleY[i] = random(0, 500);
  }
}

void draw() {
  noStroke();
  if (mousePressed == true) {
    fill(random(255), random(255), random(255));

    for (int i = 0; i <= mouseClicks && i < circleX.length; i++) {
      ellipse(circleX[i], circleY[i], 50, 50);
      //println(circleX[i]);
    }
  }

  for (int i = 0; i < posX.length; i++) {

    noStroke(); //<>//
    point(posX[i], posY[i]);

    //strokeWeight(1);
    ////if (i < posX.length - 1) {
    ////  line(posX[i], posY[i], posX[i + 1], posY[i + 1]);
    ////}
  }
  println(posX.length);
}

void mousePressed() {
  //posX = append(posX, mouseX);
  //posY = append(posY, mouseY);
  
  mouseClicks += 1;
}