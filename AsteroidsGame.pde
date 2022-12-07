void draw(){
    fill(75,100,165);
    rect(0,0,600,600);
 for(int i = 0; i < field.length; i++){
   field[i].shine();
 }
  chip.show();
  chip.move();
  for(int j = 0; j<bonk.size(); j++){
     bonk.get(j).move();
     bonk.get(j).show();
  }
  for(int i = bonk.size()-1; i >=0; i--){
      if (dist((float)chip.retCenterX(), (float)chip.retCenterY(), (float)bonk.get(i).getCenterX(), (float)bonk.get(i).getCenterY()) <30){
          bonk.remove(i);
      }
  }
} //end draw
void keyPressed(){
  if(key == 'd'){
    chip.turn(5);
  }
  if(key == 'a'){
    chip.turn(-5);
  }
  if(key == 'w'){
    chip.accelerate(5);
  }
  if(key == 's'){
    chip.accelerate(-5);
  }
  if(key == 'q'){
    chip.stopXspeed();
    chip.stopYspeed();
  }
  if(key == 'e'){
      chip.hyperspace();
  }
} // end controls

class asteroid extends Floater {
  private double myRotSpeed;
  class asteroid extends Floater {
  private double myRotSpeed;
  public asteroid(){
   if ((int)(Math.random()*3) == 1){
       corners = 9;
        xCorners = new int[]{1,-1,-1,-3,-3,-1,1,1,3};
        yCorners = new int[]{3,2,3,1,-2,-3,-2,-3,-1};
   }
   else if ((int)(Math.random()*3) == 2) {
       corners = 11;
        xCorners = new int[]{3,2,2,0,-1,-2,-3,-3,-2,1,2};
        yCorners = new int[]{1,3,4,3,4,3,1,-1,-2,-3,-2};
   }
   else {
       corners = 12;
        xCorners = new int[]{2,0,-2,-4,-4,-3,-3,-2,0,1,3,4};
        yCorners = new int[]{2,3,3,2,1,0,-1,-2,-2,-1,-1,0};
   }
   
   int n = (int)(Math.random()*7)+5;
   for(int i = 0; i<xCorners.length; i++){
       xCorners[i] *=n;
       yCorners[i] *=n;
   }
   myPointDirection = 0;
   myRotSpeed = (double)(Math.random()*3)-1;
   myXspeed = (double)(Math.random()*3)-1;
   myYspeed = (double)(Math.random()*3)-1;
   myColor = (int)(Math.random()*50);
   myCenterX = (int)(Math.random()*600);
   myCenterY = 0;
  }
  public void move(){
    myPointDirection += myRotSpeed;
    super.move();
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}
