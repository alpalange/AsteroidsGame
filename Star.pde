class star {
  private int sX, sY, sSz, sClrR, sClrB, sClrG;
  public star(){
    sX = (int)(Math.random()*600);
    sY = (int)(Math.random()*600);
    sSz = (int)(Math.random()*3)+3;
    sClrR = (int)(Math.random()*80)+175;
    sClrG = (int)(Math.random()*80)+175;
    sClrB = (int)(Math.random()*80)+175;
  }
  public void shine(){
    noStroke();
    fill(sClrR, sClrG, sClrB);
    ellipse(sX, sY, sSz, sSz);
  }
}// end star class
