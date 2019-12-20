int meiroSize=11;
float[][] meiro = new float[meiroSize][meiroSize]; 
final float upleft = 82.5;//左上

void mapping() {
  for (int i=0; i<meiroSize; i++) {
    for (int j=0; j<meiroSize; j++) {
      if (i<meiroSize-1 && j>0) {
        meiro[i][j]=1;
        continue;
      }
      meiro[i][j]=0;
    }
  }
}

void dispMap() {
  rect(-1*upleft,-1*upleft,cir_radi*meiroSize,cir_radi*meiroSize);
  for (int i=0; i<meiroSize; i++) {
    for (int j=0; j<meiroSize; j++) {
      if (meiro[i][j]==1) {
        float I=i*cir_radi-upleft, J=j*cir_radi-upleft;
        //   println("(I,J) = "+I, J);
        rect(I, J, cir_radi, cir_radi);
      }
    }
  }
}
