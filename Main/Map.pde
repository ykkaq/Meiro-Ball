int meiroSize=11+2;
float[][] meiro = new float[meiroSize][meiroSize]; 
final float upleft = 82.5;//左上

void mapping() {
  for (int i=0; i<meiroSize; i++) {
    for (int j=0; j<meiroSize; j++) {
      if(i==0 || j==0 || i==meiroSize-1 || j==meiroSize-1){
        meiro[i][j]=0;
        continue;
      }
      meiro[i][j]=1;
    }
  }
}

void dispMap() {
  rect(-1*upleft,-1*upleft,cir_radi*(meiroSize-2),cir_radi*(meiroSize-2));
  for (int i=1; i<meiroSize-1; i++) {
    for (int j=1; j<meiroSize-1; j++) {
      if (meiro[i][j]==1) {
        float I=(i-1)*cir_radi-upleft, J=(j-1)*cir_radi-upleft;
        //   println("(I,J) = "+I, J);
        rect(I, J, cir_radi, cir_radi);
      }
    }
  }
}
