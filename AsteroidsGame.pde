spaceship chip = new spaceship();
star[] field = new star[200];
void setup() {
 size(600,600);
 background(75, 100, 165);
 for(int i = 0; i < field.length; i++){
   field[i] = new star();
 }
}

void draw(){
    fill(75,100,165);
    rect(0,0,600,600);
 for(int i = 0; i < field.length; i++){
   field[i].shine();
 }
  chip.show();
  chip.move();
}

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
  if(key == 'z'){
    chip.stopXspeed();
    chip.stopYspeed();
  }
  if(key == 'x'){
      chip.hyperspace();
  }
}
