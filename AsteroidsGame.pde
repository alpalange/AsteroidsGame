ArrayList<asteroid> bonk = new ArrayList<asteroid>();
spaceship chip = new spaceship();
star[] field = new star[200];
void setup() {
 size(600,600);
 background(75, 100, 165);
 for(int i = 0; i < field.length; i++){
   field[i] = new star();
 }
 for(int j = 0; j<10; j++){
     bonk.add(new asteroid());
 }
 
} //end setup
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
