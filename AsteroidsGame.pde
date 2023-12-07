//your variable declarations here
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[250];
ArrayList <Asteroid> rocks;
//rocks = new ArrayList <Asteroid>(25);
public void setup() 
{
  //your code here
  rocks = new ArrayList <Asteroid>(25);
  size(500, 500);
  background(0);
  //bob.turn(90);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i] = new Star();
  }
   for(int i = 0; i < 25; i++){
    rocks.add(i, new Asteroid());
  }
}
public void draw() 
{
  //your code here
  background(0);
  for(int i = 0; i < nightSky.length; i++){
    nightSky[i].show();
  }
   for(int i = 0; i < rocks.size(); i++){
    Asteroid currentRock = rocks.get(i);
    rocks.get(i).show();
    rocks.get(i).move();
    float distance = dist((float)currentRock.getMyCenterX(), (float)currentRock.getMyCenterY(), (float)bob.getMyCenterX(), (float)bob.getMyCenterY());
    if(distance < 20){
    rocks.remove(i);
  }
 }
  bob.show();
  bob.move();
}
public void keyPressed(){
  if(key == 'd'){
    bob.turn(30);
  }
if(key == 'a'){
    bob.turn(-30);
  }
if(key == 'w'){
    bob.accelerate(0.2);
  }
if(key == 's'){
    bob.accelerate(-0.2);
  }
if(key == 'h'){
    bob.hyperSpace();
  }
}
