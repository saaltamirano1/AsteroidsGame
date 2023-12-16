class Spaceship extends Floater  
{   
public Spaceship(){
  corners = 4;
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners[0] = -8;
  yCorners[0] = -8;
  xCorners[1] = 16;
  yCorners[1] = 0;
  xCorners[2] = -8;
  yCorners[2] = 8;
  xCorners[3] = -2;
  yCorners[3] = 0;   
  
   myColor = color(255,0,153);   
   myCenterX = 250;
   myCenterY = 250; //holds center coordinates   
   myXspeed = 0; 
   myYspeed = 0; //holds the speed of travel in the x and y directions   
   myPointDirection = 0; //holds current direction the ship is pointing in degrees    
}
public void setXspeed(double x){
  myXspeed = x;
 }
public void hyperSpace(){
  myXspeed = 0;
  myYspeed = 0;
  myPointDirection = (int)(Math.random()*360);
  myCenterX = (int)(Math.random()*490);
  myCenterY = (int)(Math.random()*490);
}

public double getMyCenterX(){
  return myCenterX;
}

public double getMyCenterY(){
  return myCenterY;
}

public double getMyXspeed(){
  return myXspeed;
}

public double getMyYspeed(){
  return myYspeed;
}

public double getMyPointDirection(){
  return myPointDirection;
}
}
