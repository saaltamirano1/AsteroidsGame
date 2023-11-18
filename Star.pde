class Star //note that this class does NOT extend Floater
{
  //your code here
  private int myX, myY, mySize;
  
public Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    mySize = (int)(Math.random()*6);
  }
public void show(){
  noStroke();
  fill((int)(Math.random()*150+50), (int)(Math.random()*50+80),
  (int)(Math.random()*150+50));
  ellipse(myX, myY, mySize, mySize);
}
}
