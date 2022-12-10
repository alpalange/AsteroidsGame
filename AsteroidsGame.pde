ArrayList<asteroid> bonk = new ArrayList<asteroid>();
ArrayList<bullet> bob = new ArrayList<bullet>();
spaceship chip = new spaceship();
star[] field = new star[200];

void setup() {
  size(600, 600);
  background(75, 100, 165);
  for (int i = 0; i < field.length; i++) {
    field[i] = new star();
  }
  for (int j = 0; j<10; j++) {
    bonk.add(new asteroid());
  }
} //end setup

void draw() {
  fill(75, 100, 165);
  rect(0, 0, 600, 600);
  for (int i = 0; i < field.length; i++) {
    field[i].shine();
  }
  chip.show();
  chip.move();
  for (int j = 0; j<bonk.size(); j++) {
    bonk.get(j).move();
    bonk.get(j).show();
  }
  for (int j = 0; j<bob.size(); j++) {
    bob.get(j).show();
    bob.get(j).move();
    /*if (bob.get(j).getCenterX() > 610 || bob.get(j).getCenterX() < -10) {     
      bob.remove(j);
    }    
    if (bob.get(j).getCenterY() > 610 || bob.get(j).getCenterY() < -10) {    
      bob.remove(j);
    } */
  }
  for (int i = bonk.size()-1; i >=0; i--) {
    if (dist((float)chip.retCenterX(), (float)chip.retCenterY(), (float)bonk.get(i).getCenterX(), (float)bonk.get(i).getCenterY()) <30) {
      bonk.remove(i);
    }
  }
  for (int i = bonk.size()-1; i >=0; i--) {
    for (int j = bob.size()-1; j >=0; j--) {
      if (dist((float)bob.get(j).getCenterX(), (float)bob.get(j).getCenterX(), (float)bonk.get(i).getCenterX(), (float)bonk.get(i).getCenterY()) <30) {
      bonk.remove(i);
      bob.remove(j);
      break;
      }
    }
  }
} //end draw
void keyPressed() {
  if (key == 'd') {
    chip.turn(5);
  }
  if (key == 'a') {
    chip.turn(-5);
  }
  if (key == 'w') {
    chip.accelerate(5);
  }
  if (key == 's') {
    chip.accelerate(-5);
  }
  if (key == 'q') {
    chip.stopXspeed();
    chip.stopYspeed();
  }
  if (key == 'e') {
    chip.hyperspace();
  }
  if (key == 'b') {
    bob.add(new bullet(chip));
    bob.get(bob.size()-1).accelerate(6.0);
  }
} // end controls
