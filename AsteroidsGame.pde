//your variable declarations here
Spaceship bob = new Spaceship();
Star[] nightSky = new Star[250];
ArrayList <Asteroid> rocks;
ArrayList <Bullet> bullets;
public void setup() 
{
  //your code here
  rocks = new ArrayList <Asteroid>(25);
  bullets = new ArrayList <Bullet>();
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
  for(int n = 0; n < rocks.size(); n++){
  for(int i = 0; i < bullets.size(); i++){
    Bullet currentBullet = bullets.get(i);
    Asteroid currentRock = rocks.get(n);
    float distance = dist((float)currentBullet.getMyCenterX(), (float)currentBullet.getMyCenterY(), (float)currentRock.getMyCenterX(), (float)currentRock.getMyCenterY());
    if(distance < 70){
    rocks.remove(n); 
    bullets.remove(i);
     }
    }
    break;
 }
  bob.show();
  bob.move();
for(int i = 0; i < bullets.size(); i++){
    bullets.get(i).show();
    bullets.get(i).move();
   }
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
if(key == ' '){
  bullets.add(new Bullet(bob));
  }
  // if you press space
  // then you makee a new bullet new Bullet(bob)
}
