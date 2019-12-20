/*円の座標はボールの中心にする*/
float cir_radi=15;
float cir_x=-1*upleft+cir_radi/2; //円の左上
float cir_y=-1*upleft+cir_radi/2;  //円の左上
//float theta=(rad*PI/180)%(2*PI);

void dispBall() {
  rect(cir_x-cir_radi/2, cir_y-cir_radi/2, cir_radi, cir_radi, cir_radi);
}

void moveBall() {
  float theta=(rad*PI/180)%(2*PI);
  /* Movement*/
  print(theta+" ");
  cir_x+=sin(theta);
  cir_y+=cos(theta); 

  /* Fixing */
  float absLimX=upleft-cir_radi/2;
  float absLimY=upleft-cir_radi/2;
  /* x asis */
  if(cir_x < -1*absLimX) cir_x=-1*absLimX;
  if(cir_x > absLimX) cir_x=absLimX;
  /* y asis */
  if(cir_y < -1*absLimY) cir_y=-1*absLimY;
  if(cir_y > absLimY) cir_y=absLimY;
  
}
