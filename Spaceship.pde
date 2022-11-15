class Spaceship extends Floater  
{   
     public Spaceship() {
    corners = 3;
    xCorners = new int[corners];
    xCorners[0] = 16;
    xCorners[1] = -8;
    xCorners[2] = -8;
    yCorners = new int[corners];
    yCorners[0] = 0;
    yCorners[1] = 8;
    yCorners[2] = -8;
    myColor = color(255, 255, 255);
    myCenterX = myCenterY = 250; //holds center coordinates
    myXspeed = myYspeed = 0; //holds x and y coordinates of the vector for direction of travel
    myPointDirection = 0;
  }
}
