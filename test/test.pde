float g=9.8;
float rad=90;
float theta=radians(rad);
//float rote[2][2] = {{sin
float cir_x=150;
float cir_y=25;
float radiu=10;


void setup(){
  size(400,300);
}

void draw(){
  background(255); //Screen reset
  rect(cir_x,cir_y,radiu,radiu,radiu); //ball
  float t=1;
  boolean bool= (cir_y < 0.25*cir_x+175);
  if(bool){
    cir_y+=(cir_y*t+0.5*g*t*t)*0.01;
    rad++;
    //rotate(rad*PI/180);
    println(cir_y,0.25*cir_x+175);
  }else{
    cir_y=25;
    t=0;
  }

  line(100,100,200,125); // y=0.25x+175
  line(200,125,300,250);
}
