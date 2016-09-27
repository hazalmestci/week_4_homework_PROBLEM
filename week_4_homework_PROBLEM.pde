float x;
float y;

float dx;
float dy;

float rotAngle = 45;
int w = 2;
int h = 650;

void setup (){
  size (800, 800);
  noStroke();
 background (#F78D50); 
    
  x= width/6;
  y=height/2;
  
  dx= 7;
  dy= 7;
  
} 

void draw() {
  rectMode (CENTER);
  
  if ((mouseX>(width/2-100)) && (mouseX<(width/2+100)) && (mouseY> (height/2-100)) && (mouseY< (height/2+100))){
      fill(#777D8E);

  }
  
  else {
  fill (42, 11, 90);  
  
   pushMatrix(); 
  fill(x/3, y/1, x/1);
  translate(width/80, height/2);
  rotate(radians(rotAngle));
  rectMode(CENTER);
  rect(0,0,w,h);
  rotAngle+=2; 
  popMatrix ();
  
  }
  
  rect(width/2, height/2, 200,200);
  if ((dist(mouseX, mouseY, width/2, height/2) <75) ) {
    fill(#162A5D);
  }
  
  else {
   fill (#BC610B); 
 }
 ellipse(width/2, height/2, 150, 150);
  
  fill(x/2, y/14, x/6);
  ellipse (x, y, 50, 50);
  
  x+= dx;
  y+= dy;
  
  if (x > width-25 || x<25) {
    x -= dx/4;
   dx= -dx*2; 
  }
  if (y > height || y<0) {
  y-= dy;
  dy= -dy;
  }

  
}