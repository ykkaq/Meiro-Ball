/*円の座標はボールの中心とする*/
float cir_radi=15;
float cir_x=-1*upleft+cir_radi/2; //迷路の左上
float cir_y=-1*upleft+cir_radi/2;  //迷路の左上
//float theta=(rad*PI/180)%(2*PI);

void dispBall() {
  rect(cir_x-cir_radi/2, cir_y-cir_radi/2, cir_radi, cir_radi, cir_radi);
}

void moveBall() {
  float theta=(rad*PI/180)%(2*PI);

  /*動く条件*/
  int arX=(int)((cir_x+upleft)/15)+1; //配列でのボールの位置
  int arY=(int)((cir_y+upleft)/15)+1; //上に同じ
  int csin=trCeil((sin(theta))); //三角関数の小数切り上げ
  int ccos=trCeil(cos(theta)); //上に同じ
  float absLim=upleft-cir_radi/2; //ボールの左上のときの中心位置
  float calcX=15*(arX-1)-absLim; //ボールの位置配列版  
  float calcY=15*(arY-1)-absLim; //上に同じ

  //println("ar:", arX, csin, arY, ccos);
  //println("calc:", 15*(arX-1)-absLim, 15*(arY-1)-absLim);

  boolean b1=meiro[arX+csin][arY]==0 && ((csin>0 && cir_x>calcX)||(csin<0 && cir_x<calcX));
  boolean b2=meiro[arX][arY+ccos]==0 && ((ccos>0 && cir_y>calcY)||(ccos<0 && cir_y<calcY));
  //println("test:", b1, b2);

  cir_x+=sin(theta);
  cir_y+=cos(theta);

  if (meiro[arX+csin][arY]==0 && ((csin>0 && cir_x>calcX)||(csin<0 && cir_x<calcX))) {
    cir_x=calcX;
  }
  if (meiro[arX][arY+ccos]==0 && ((ccos>0 && cir_y>calcY)||(ccos<0 && cir_y<calcY))) {
    cir_y=calcY;
  } 


  /*枠の外に出ないためのもの*/
  /* x asis */
  if (cir_x < -1*absLim) cir_x=-1*absLim;
  if (cir_x > absLim) cir_x=absLim;
  /* y asis */
  if (cir_y < -1*absLim) cir_y=-1*absLim;
  if (cir_y > absLim) cir_y=absLim;
}
