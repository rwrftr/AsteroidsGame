class Asteroid extends Floater
{
  int c1, c2;
  public Asteroid() {
    corners = 3;
    xCorners = new int[corners];
    xCorners[0] = 16;
    xCorners[1] = -8;
    xCorners[2] = -8;
    yCorners = new int[corners];
    yCorners[0] = 0;
    yCorners[1] = 8;
    yCorners[2] = -8;
    c1 = 0;
    c2 = 255;
    myColor = color(255, 255, 255);
    myCenterX = myCenterY = 250; 
    myXspeed = myYspeed = 0; 
    myPointDirection = 0;
  }
  public void move (double rotatedeg)   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;  
    myPointDirection += rotatedeg;

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
}
