float t=0.001;
float offset;
float movimento;
   float cor ;

void setup()

{colorMode(HSB); background(5);

  size(540, 540);
strokeWeight(3.2);
//frameRate(60);
}
void draw()
{if(frameCount%450==0){background(5);}
 scale(0.4);
 //frameRate(16);
       translate(width/2,height/2);
          translate(-width,-height/2);

 stroke(cor%360,88,188,100+cor);
 noFill();   
 //fill(cor%360,188,188,88);

 
 movimento = map(mouseX,0,width,0,100);println(movimento);
  harom(500,460,45,460,10,(sin(0.0005*millis()%(3*TWO_PI))+1)/3);
}

void harom(float ax, float ay,float bx, float by, int level,float ratio)
{
  if(level!=0){
  float vx,vy,nx,ny,cx,cy;
  vx=bx-ax;
  vy=by-ay;if(movimento == 0){movimento =1;}
  nx=cos(TAU/8)*vx-sin(TAU/8)*vy; 
  ny=sin(TAU/8)*vx+cos(TAU/8)*vy; 
  cx=ax+nx;
  cy=ay+ny;
  
//noStroke();
    pushMatrix();
     rotate(88);
    cor+=0.8;

 //print(frameCount);
    beginShape(POINTS);
vertex(ax,ay); vertex( ax,ax); vertex( ax,by); vertex( ax,bx); vertex( ax,cx); vertex( ax,cy);
    vertex(bx,ay); vertex( bx,ax); vertex( bx,by); vertex( bx,bx); vertex( bx,cx); vertex( bx,cy);
    vertex(cx,ay); vertex( cx,ax); vertex( cx,by); vertex( cx,bx); vertex( cx,cx); vertex( cx,cy);
vertex(ay,ay); vertex( ay,ax); vertex( ay,by); vertex( ay,bx); vertex( ay,cx); vertex( ay,cy);
    vertex(by,ay); vertex( by,ax); vertex( by,by); vertex( by,bx); vertex( by,cx); vertex( by,cy);
    vertex(cy,ay); vertex( cy,ax); vertex( cy,by); vertex( cy,bx); vertex( cy,cx); vertex( cy,cy);
vertex(ay,ay); vertex( ay,ax); vertex( ay,by); vertex( ay,bx); vertex( ay,cx); vertex( ay,cy);

  
    
    endShape();
popMatrix();
  harom(ax*ratio+cx*(1-ratio),ay*ratio+cy*(1-ratio),ax*(1-ratio)+bx*ratio,ay*(1-ratio)+by*ratio,level-1,ratio);
  }
}