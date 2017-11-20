

import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;
PeasyCam cam ;
int time = 1;
    float col;
void setup(){
  colorMode(HSB);
  cam = new PeasyCam(this,300);
  size(600, 600,P3D);
  //noFill();
  stroke(5);
  strokeWeight(2.8);
}

void draw(){
  pushMatrix();
  translate(width/2,height/2);
  popMatrix();
  background(8);
  for(int i = 0; i < 360; i+=3){
    float x = cos(radians(i)) * 80 + width / 2;
    float y = sin(radians(i)) *160 + height / 2;
    float z = tan(TWO_PI*(i)*240);
    float w = sin(radians(time+i )) * 300;
    w = abs(w);
    z= abs(z);
    rotateX(0.001);
    rotateY(0.004);
rotateZ(0.08);

    //fill(col,col,col);

    // noStroke();
 lights();
    fill(((i+w)*256)%360,180,188,200);
       col+=0.08;
    beginShape(TRIANGLE_FAN);

//vertex(z,w);
//    vertex(w,z);
   vertex(w,z,x);
    vertex(x,w,z);
     vertex(z,w,x);
    vertex(z,x,w);
     // vertex(w,x);
    vertex(z,w,y);
  vertex (y,z,w);
  vertex(y,w,z);
  vertex(z,y,w);
    // vertex(w,w);
    //ellipse(x, y, w, w);
  endShape(CLOSE);
  }
  time++;
}