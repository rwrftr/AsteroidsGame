class Star //note that this class does NOT extend Floater
{

  int starX, starY, starSize; 

  public Star() {
    starX = (int)(Math.random()*1260)+10;
    starY = (int)(Math.random()*700)+10;
    starSize = (int)(Math.random()*10);
  }

  public void show() {
    noFill();
    stroke(255,255,255,60);
    ellipse(starX, starY, starSize, starSize);
  }
}
