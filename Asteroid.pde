class Asteroid extends Floater
{
  boolean benHit;
  int c1, c2, rotspeed;
  public Asteroid() {
    benHit = false;
    corners = 5;
    xCorners = new int[corners];
    xCorners[0] = 5;
    xCorners[1] = -8;
    xCorners[2] = -6;
    xCorners[3] = 3;
    xCorners[4] = 14;
    yCorners = new int[corners];
    yCorners[0] = 10;
    yCorners[1] = 8;
    yCorners[2] = -5;
    yCorners[3] = -9;
    yCorners[4] = -5;
    c1 = 0;
    c2 = 255;
    myColor = color(255, 255, 255);
    myCenterX = (Math.random()*1260)+10; 
    myCenterY = (Math.random()*700)+10;
    myXspeed = (Math.random()*10)-5; 
    myYspeed = (Math.random()*10)-5; 
    myPointDirection = (Math.random()*360);
    rotspeed = (int)(Math.random()*10)+1;
  }
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;  
    myPointDirection += rotspeed;

    //wrap around screen    
    if (myCenterX >width)
    {     
      myCenterX = 0;
    } else if (myCenterX<0)
    {     
      myCenterX = width;
    }    
    if (myCenterY >height)
    {    
      myCenterY = 0;
    } else if (myCenterY < 0)
    {     
      myCenterY = height;
    }
  }
  
  public void show ()  //Draws the floater at the current position  
  {    
    noFill();
    //fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
 
  public Float getCenterX() {
    return (float)myCenterX;
  }
  public Float getCenterY() {
    return (float)myCenterY;
  }

  public void bounce(int x) {    

    myXspeed = myXspeed / 2 - ((frank.get(x).myXspeed) / 2);
    myYspeed = myYspeed / 2 - ((frank.get(x).myYspeed) / 2);
  }
}
