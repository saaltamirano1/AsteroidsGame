class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -10;
    yCorners[0] = -15;
    xCorners[1] = 10;
    yCorners[1] = -15;
    xCorners[2] = 15;
    yCorners[2] = 0;
    xCorners[3] = 10;
    yCorners[3] = 15;
    xCorners[4] = -10;
    yCorners[4] = 15;
    xCorners[5] = -15;
    yCorners[5] = 0;
    
   myCenterX = (int)(Math.random()*500);
   myCenterY = (int)(Math.random()*500);
   myColor = color(103,102,102);   
   myXspeed = (int)(Math.random()*.5)+1;
   myYspeed = (int)(Math.random()*.5)+1;
   rotSpeed = (int)(Math.random()*3)+1;
   myPointDirection = (int)(Math.random()*4)-2;
  }
  
public void move ()   //move the floater in the current direction of travel
  {      
    turn(rotSpeed);
     super.move();
     //accelerate(myPointDirection);
 } 
 
public double getMyCenterX(){
  return myCenterX;
}

public double getMyCenterY(){
  return myCenterY;
}

}
