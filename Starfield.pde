Particle[] parts = new Particle[1000];
OddballParticle[] stars = new OddballParticle [5];
void setup()
{
  size(400, 600);
  for (int i = 0; i < parts.length; i++)
  parts [i] = new Particle();
  parts [0] = new OddballParticle();
}
void draw()
{
  background(0);
  for (int i = 0; i < parts.length; i++)
  {
    parts[i].move();
    parts[i].show();
  }
  text("I was not An Imposter", 140 , 300);
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle ()
  {
    myColor = color(255);
    mySpeed = Math.random()*6;
    myAngle = Math.random()*2*Math.PI;
    myX = 200;
    myY = 300;
  }
  void move ()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  void show()
  {
    fill(myColor);
    noStroke();
    ellipse((float)myX,(float)myY,2,2);
  }
}
class OddballParticle extends Particle
{
  OddballParticle (){
    myColor = color(255);
    mySpeed = Math.random()*6;
    myAngle = Math.random()*Math.PI;
    myX = 200;
    myY = 300;
  }
  void move (){
    myX = myX + (int)(Math.cos(mySpeed) + (int)(Math.random()*5)-4);
    myY = myY + (int)(Math.cos(mySpeed) + (int)(Math.random()*5)-4);
  }
  void show (){
    fill(150,75,0);
    ellipse((float)myX,(float)myY, 20,30);
    fill(102,153,170);
    rect ((float)myX,(float)myY,16,10);
    
  }
}



