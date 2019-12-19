int meiroSize=21;
float[][] meiro = new float[meiroSize][meiroSize]; 

void mapping() {
  for (int i=0; i<meiroSize; i++) {
    for (int j=0; j<meiroSize; j++) {
      if (i<20 && j>0) {
        meiro[i][j]=1;
        continue;
      }
      meiro[i][j]=0;
    }
  }
}

void dispMap() {
  for (int i=0; i<meiroSize; i++) {
    for (int j=0; j<meiroSize; j++) {
      if (meiro[i][j]==1) {
        float I=i*cir_radi-105, J=j*cir_radi-105;
        //   println("(I,J) = "+I, J);
        rect(I, J, cir_radi, cir_radi);
      }
    }
  }
}

void meiroShell() {
  rect(-105, -105, 210, 210);
}
