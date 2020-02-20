float rad=0; //<>//
boolean flag=true;

void setup() {
  size(400, 300);
  translate(200, 150);
}

void draw() {
  //println("-");
  background(255);
  translate(200, 150);
  rotate(rad*PI/180);
  dispMap();
  dispBall();
  if ((key == 'q' || key == 'Q') && keyPressed) {
    rad-=1;
  }
  if ((key == 'e' || key == 'E') && keyPressed) {
    rad+=1;
  }
  if (rad <= -360 || 360 <= rad) {
    rad=0;
  }

  //println("cir:", cir_x, cir_y, rad);
  moveBall();

  rect(cir_x, cir_y, 0, 0);

  //println();
  if (cir_x == 75.0 && cir_y==75.0) {
    goal();
  }
}

int trCeil(float flo) {
  if (-1.0<flo && flo<1.0) {
    if (flo>0.0) {
      flo=ceil(flo);
    } else {
      flo=ceil(flo)-1;
    }
  }
  return (int)flo;
}
