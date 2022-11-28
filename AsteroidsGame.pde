//global declarations

Spaceship roger = new Spaceship();
boolean charge, forward, leftturn, rightturn, backup = false; // my toggles when pressing keybuttons
int storedenergy = 0;
Star [] stars = new Star[50];


public void setup() 
{
  size(500, 500);
  background(0);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }

  //your code here
  
}
public void draw() 
{
  background(0);
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  //these if statements are the keyboard inputs
  //the keyboard inputs toggle a boolean until they are lifted.
  //when that boolean = true, this behavior happens
  if (charge == true) {
    //println(storedenergy);
    if (storedenergy < 480) {
      storedenergy+= 2;
    }
    for (int i = 0; i<storedenergy; i++) {

      fill(36, 234, 240);
      rect(10, 10, storedenergy, 30, 20 );
    }
  }
  if (rightturn == true) {
    roger.turn(5);
  }
  if (leftturn == true) {
    roger.turn(-5);
  }
  if (forward == true) {
    roger.accelerate(0.1);
  }
  if (backup == true) {
    roger.accelerate(-0.1);
  }
  //move and show the spaceship
  roger.move();
  roger.show();
}

//when input

public void keyPressed()
{
  if (key == 'q') {
    roger.setSpeed(0); 
    roger.setY();
    roger.setX();
    roger.setDirection();
  }
  if (keyCode == SHIFT) {
    charge = true;
  }
  if (key == 'w') {
    forward = true;
  }
  if (key == 'a') {
    leftturn = true;
  }
  if (key == 'd') {
    rightturn = true;
  }
  if (key == 's') {
    backup = true;
  }
}

public void keyReleased()
{
  if (keyCode == SHIFT) {
    charge = false;
    roger.accelerate((storedenergy/10));
    storedenergy = 0;
  }
  if (key == 'w') {
    forward = false;
  }
  if (key == 'a') {
    leftturn = false;
  }
  if (key == 'd') {
    rightturn = false;
  }
  if (key == 's') {
    backup = false;
  }
}
