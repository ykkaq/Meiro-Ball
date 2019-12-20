float rad=0; //<>//
boolean flag=true;

void setup() {
  size(400, 300);
  translate(200,150);
  mapping();
}

void draw() {
  background(255);
  translate(200,150);
  rotate(rad*PI/180);
  dispMap();
  dispBall();
  if((key == 'q' || key == 'Q') && keyPressed){
    rad-=1;
  }
 if((key == 'e' || key == 'E') && keyPressed){
    rad+=1;
  }
  if(rad <= -360 || 360 <= rad){
     rad=0; 
  }

  moveBall();
  
  rect(cir_x,cir_y,0,0);
  //rect(0,0,sin(theta)*150,cos(theta)*150);
   //<>//
  println(cir_x,cir_y,rad);
  //rect(0,-500,0,1000);
  //rect(-500,0,1000,0);
}
