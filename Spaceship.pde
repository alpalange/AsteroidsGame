class spaceship extends Floater{  
  public spaceship(){
   corners = 14;
   xCorners = new int[]{10,6,0,-5,-6,-10,-8,-10,-8,-10,-6,-5,0,6,10};
   yCorners = new int[]{0,4,4,3,4,4,2,0,-2,-4,-4,-3,-4,-4,0};
   for(int i = 0; i<xCorners.length; i++){
       xCorners[i] *=2;
       yCorners[i] *=2;
   }
   myPointDirection = 0;
   myXspeed = 0;
   myYspeed = 0;
   myColor = (int)(Math.random()*50)+145;
   myCenterX = 300;
   myCenterY = 300;
  }
  public void hyperspace(){
    myXspeed = 0;
    myYspeed = 0;
    myColor = (int)(Math.random()*50)+115;
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myPointDirection = (int)(Math.random()*360);
  }
   public void stopXspeed() { 
      if(myXspeed>5){myXspeed-=5;}
      else if(myXspeed<-5){myXspeed+=5;}
      else {myXspeed=0;}
  }
  public void stopYspeed() { 
      if(myYspeed>5){myYspeed-=5;}
      else if(myYspeed<-5){myYspeed+=5;}
      else {myYspeed=0;}
  }
}//end spaceship class
