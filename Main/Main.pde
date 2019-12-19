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
  meiroShell();
  dispMap();
  dispBall();
  if((key == 'q' || key == 'Q') && keyPressed){
    rad-=1;
  }
 if((key == 'e' || key == 'E') && keyPressed){
    rad+=1;
  }

  moveBall();
   //<>//
  println(cir_x,cir_y,rad);
  rect(100,-100,0,0);
}
