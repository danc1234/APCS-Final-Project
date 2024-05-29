import java.util.LinkedList;
Map x;
private int lives=100;
private int cash=650;
private int waves=1;
private int barrier;

//hi;
//private ArrayList<ArrayList<Bloons>> balloon = new ArrayList<ArrayList<Bloons>>();
private ArrayList<Bloons> balloon = new ArrayList<Bloons>();
void setup() {
  size(953, 530);
  rect(823, 0, 130, 120);
  x = new Map("Map.png");
  image(x.getMap(), 0, 0);
  fill(0);
  textSize(30);
  text("Lives: "+lives, 825, 30);
  text("Cash: "+cash, 825, 60);
  textSize(20);
  text("Wave "+waves+" out of \n85", 825, 90);
  addWaves();
}
void draw() {
  //setup();
  //text("" + mouseX + ", " + mouseY, 10, 10);
  image(x.getMap(), 0, 0);
  for (Bloons b : balloon) {
    if (b.getDraw()) {
      b.drawBloon();
    }
    b.changeCoord();
  }
  fill(255);
  rect(823, 0, 130, 120);
  fill(0);
  textSize(30);
  text("Lives: "+lives, 825, 30);
  text("Cash: "+cash, 825, 60);
  textSize(20);
  text("Wave "+waves+" out of \n85", 825, 90);
  if (lives == 0) {
    int time = millis();
    if (time > barrier + 700) {
      fill(#FF0000);
      rect(205.75, 225, 411.5, 100); 
      fill(0);
      textSize(40);
      text("HOW DARE YOU LET THE \n           BLOONS WIN!!!", 207, 265);
    }
  }  
}

public void setLives(int damage) {
  if (lives - damage <= 0) {
    lives = 0; 
    barrier = millis();
  } else {
    lives -= damage; 
  }
}
public void advanceWaves() {
  waves++;
}
public void modifyBloonList() {
  balloon.remove(0); 
}

public void addWaves() {
  for (int i = 0; i < 19; i++) {
     Map y = new Map("Map.png");
     balloon.add(new Bloons(1, 1, 4.5, 227.0, false, false, y));
  }  
}
