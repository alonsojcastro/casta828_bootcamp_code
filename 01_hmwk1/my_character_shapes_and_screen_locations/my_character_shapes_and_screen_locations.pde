
void setup (){
  size (500, 500);
  
}

void draw (){
  
  background (180, 100, 120);
  
  //system variable
  rectMode (CENTER);
  fill (150, 200, 110);
  stroke (63, 44, 44);
  strokeWeight (5);
  rect (width/2, height/2, 425, 425);
  
  //clown face
  
  //Head
  noStroke ();
  fill (255);
  ellipse (width/2,height/2, 350, 200);
  ellipse (width/2,(height/2)+60, 150, 150);
  fill(225,225,0);
  ellipse ((width/2),(height/2)-100, 165, 55);
  
  //hat
  stroke (225,225,0);
  strokeWeight (30); 
  line(100,175,400,175);
  
  //eyes
  noStroke ();
  fill (0);
  ellipse ((width/2)-50, (height/2)-15, 60, 60);
  ellipse ((width/2)+50, (height/2)-15, 20, 20);
  
  //nose
  noStroke ();
  fill (255,0,0);
  ellipse (width/2, (height/2)+50, 50, 50);
  
  //mouth
  stroke (0);
  strokeWeight (10); 
  line(300,350,200,350);
  
  //earrings
  stroke (110);
  fill (0);
  ellipse ((width/2)-168, (height/2)+25, 20, 20);
  ellipse ((width/2)+168, (height/2)+25, 20, 20);
  
}
