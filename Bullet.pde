class Bullet extends Floater
{
 public Bullet(Spaceship theShip){
    myCenterX = theShip.getMyCenterX();
    myCenterY = theShip.getMyCenterY();
    myXspeed = theShip.getMyXspeed();
    myYspeed = theShip.getMyYspeed();
    myPointDirection = theShip.getMyPointDirection();
    accelerate(5.0);
    myColor = color(0,255,249);   
  }        
  public void show(){
  noStroke();
  fill(myColor);
  ellipse((float)myCenterX,(float)myCenterY,7,7);
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
  public double getMyCenterX(){
  return myCenterX;
  }

  public double getMyCenterY(){
  return myCenterY;
  }
} 

