class Bullet extends Floater {

  public Bullet(Spaceship ship) {
    corners = 4;
    xCorners = new int[corners];
    xCorners[0] = 5;
    xCorners[1] = -8;
    xCorners[2] = -6;
    xCorners[3] = 3;
    yCorners = new int[corners];
    yCorners[0] = 10;
    yCorners[1] = 8;
    yCorners[2] = -5;
    yCorners[3] = -9;
    myCenterX = (double)ship.getCenterX();
    myCenterY = (double)ship.getCenterY();
    myXspeed = (double)ship.getXSpeed();
    myYspeed = (double)ship.getYSpeed();
    myPointDirection = ship.getPoint();
  }
}
