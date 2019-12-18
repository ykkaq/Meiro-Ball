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
  ball();
  if((key == 'q' || key == 'Q') && keyPressed){
    rad-=0.5;
  }
 if((key == 'e' || key == 'E') && keyPressed){
    rad+=0.5;
  }
  
  float theta=(rad*PI/180)%(2*PI);
  cir_x+=sin(theta);
   //<>//
  println(cir_x,cir_y,rad);
}
