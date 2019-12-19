float cir_x=-100*0; //円の左上
float cir_y=-100;  //円の左上
int cir_radi=10;

void dispBall() {
  rect(cir_x-cir_radi/2, cir_y-cir_radi/2, cir_radi, cir_radi, cir_radi);
}

void moveBall() {
  /* Movement*/
  float theta=(rad*PI/180)%(2*PI);
  print(theta+" ");
  int x=(int)cir_x/cir_radi+10;  
  int y=(int)cir_y/cir_radi+10;
  cir_x+=sin(theta);
  cir_y+=cos(theta); 

  /* Fixing */
  /* x asis */
  if (cir_x<=-100) cir_x=-100;
  if (cir_x>= 100) cir_x=100;
  /* y asis */
  if (cir_y<=-100) cir_y=-100;
  if (cir_y>= 100) cir_y=100;
}
