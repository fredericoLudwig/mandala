import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;
PeasyCam cam;
int FPS = 1;
float TIMER = 1*FPS;
float t=0.001;
float offset;
float movimento;
float off;
float girar; 
float velocidade;
void setup()

{   
  //background(0);

  colorMode(HSB);  
  cam = new PeasyCam(this, 800);
  fullScreen(P3D);
  //translate(width/2,height/2);
  //size(540, 540, P3D);
  strokeWeight(2.8);
  // frameRate(12);
}
void harom(float ax, float ay, float bx, float by, int level, float ratio, float z)
{
  if (level!=0) {
    float vx, vy, nx, ny, cx, cy;
    vx=bx-ax;
    vy=by-ay;
    nx=cos(TWO_PI/8)*vx-sin(TWO_PI/8)*vy; 
    ny=sin(TWO_PI/8)*vx+cos(TWO_PI/8)*vy; 
    cx=ax+nx;
    cy=ay+ny;
    z = nx+88;
    //noStroke();
    //strokeJoin(ROUND);
    if (mousePressed)
  {
  beginShape(POINTS);
    vertex(ax, ay, z); 
    vertex( ax, ax, z); 

    vertex( ax, by, z); 
    vertex( ax, bx, z); 
    vertex( ax, cx, z); 
    vertex( ax, cy, z);
    vertex(bx, ay, z); 
    vertex( bx, ax, z); 
    vertex( bx, by, z); 
    vertex( bx, bx, z); 
    vertex( bx, cx, z); 
    vertex( bx, cy, z);
    vertex(cx, ay, z); 
    vertex( cx, ax, z); 
    vertex( cx, by, z); 
    vertex( cx, bx, z); 
    vertex( cx, cx, z); 
    vertex( cx, cy, z);
    vertex(ay, ay, z); 
    vertex( ay, ax, z); 
    vertex( ay, by, z); 
    vertex( ay, bx, z); 
    vertex( ay, cx, z); 
    vertex( ay, cy, z);
    vertex(by, ay, z); 
    vertex( by, ax, z); 
    vertex( by, by, z); 
    vertex( by, bx, z); 
    vertex( by, cx, z); 
    vertex( by, cy, z);
    vertex(cy, ay, z); 
    vertex( cy, ax, z); 
    vertex( cy, by, z); 
    vertex( cy, bx, z); 
    vertex( cy, cx, z); 
    vertex( cy, cy, z);
    vertex(ay, ay, z); 
    vertex( ay, ax, z); 
    vertex( ay, by, z); 
    vertex( ay, bx, z); 
    vertex( ay, cx, z); 
    vertex( ay, cy, z);

    vertex(cy, ay, z); 
    vertex( cy, ax, z); 
    vertex( cy, by, z); 
    vertex( cy, bx, z); 
    vertex( cy, cx, z); 
    vertex( cy, cy, z);
    endShape(CLOSE);
  } else {
    beginShape(LINES);
    //drawLine();
    vertex(ax, ay, z); 
    vertex( ax, ax, z); 

    vertex( ax, by, z); 
    vertex( ax, bx, z); 
    vertex( ax, cx, z); 
    vertex( ax, cy, z);
    vertex(bx, ay, z); 
    vertex( bx, ax, z); 
    vertex( bx, by, z); 
    vertex( bx, bx, z); 
    vertex( bx, cx, z); 
    vertex( bx, cy, z);
    vertex(cx, ay, z); 
    vertex( cx, ax, z); 
    vertex( cx, by, z); 
    vertex( cx, bx, z); 
    vertex( cx, cx, z); 
    vertex( cx, cy, z);
    vertex(ay, ay, z); 
    vertex( ay, ax, z); 
    vertex( ay, by, z); 
    vertex( ay, bx, z); 
    vertex( ay, cx, z); 
    vertex( ay, cy, z);
    vertex(by, ay, z); 
    vertex( by, ax, z); 
    vertex( by, by, z); 
    vertex( by, bx, z); 
    vertex( by, cx, z); 
    vertex( by, cy, z);
    vertex(cy, ay, z); 
    vertex( cy, ax, z); 
    vertex( cy, by, z); 
    vertex( cy, bx, z); 
    vertex( cy, cx, z); 
    vertex( cy, cy, z);
    vertex(ay, ay, z); 
    vertex( ay, ax, z); 
    vertex( ay, by, z); 
    vertex( ay, bx, z); 
    vertex( ay, cx, z); 
    vertex( ay, cy, z);

    vertex(cy, ay, z); 
    vertex( cy, ax, z); 
    vertex( cy, by, z); 
    vertex( cy, bx, z); 
    vertex( cy, cx, z); 
    vertex( cy, cy, z);
    endShape(CLOSE);

    harom(ax*ratio+cx*(1-ratio), ay*ratio+cy*(1-ratio), ax*(1-ratio)+bx*ratio, ay*(1-ratio)+by*ratio, level-1, ratio, nx+88);
  }
}
}
void draw()
{//scale(1.02);
  //frameRate(16);
  //lights();
  girar+=8888;
  // lights();
  rotate(girar);
  //rotateZ(girar);
  //  rotateY(girar);
  //rotateY(girar);
  if (frameCount % TIMER == 0) {
    //  background(0);//background(off%360,80,120,10);
    //} else {
    background(0, 16);//background(off%360,80,120,10);
  }

  // translate(width/2,height/2);
  //background(250);
  //movimento = map(mouseX,0,width,0,100);
  stroke(off%216*0.16, 126, 232);
  off+=0.8;

  harom(500, 460, 45, 460, 10, (sin(0.000016*millis()%(8*TWO_PI))+8)/8, -16);
}
//}