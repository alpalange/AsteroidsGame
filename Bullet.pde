class bullet extends Floater{
  public bullet(spaceship chip){
    myCenterX = chip.retCenterX()+11;
    myCenterY = chip.retCenterY();
    myXspeed = chip.retXspeed();
    myYspeed = chip.retYspeed();
    myPointDirection = chip.retPointDirection();
    myColor = 255;
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}//end bullet
