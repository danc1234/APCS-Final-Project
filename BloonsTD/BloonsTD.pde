import java.util.LinkedList;
Map x;
private static int lives=100;
private static int cash=650;
private static int waves=1;
private static int barrier;

//hi;
private static ArrayList<Bloons> balloon = new ArrayList<Bloons>();
void setup() {
  size(953, 530);
  rect(823, 0, 130, 120);
  x = new Map("Map.png");
  image(x.getMap(), 0, 0);
  balloon.add(new Boss(9, (double) 4.5, 3.0, 227.0, 901, 50, x, false, false));
  fill(0);
  textSize(30);
  text("Lives: "+lives, 825, 30);
  text("Cash: "+cash, 825, 60);
  textSize(20);
  text("Wave "+waves+" out of \n85", 825, 90);
}
void draw() {
  //setup();
  //text("" + mouseX + ", " + mouseY, 10, 10);
  image(x.getMap(), 0, 0);
  for (int i = 0; i < balloon.size(); i++) {
    if (balloon.get(i).getDraw()) {
      balloon.get(i).drawBloon();
    }
    balloon.get(i).changeCoord();
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
    if (time > barrier + 1000) {
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
    barrier = millis()+1000;
  } else {
    lives -= damage; 
  }
}
public static void advanceWaves() {
  waves++;
}
public static void modifyBloonList() {
  balloon.remove(0); 
}
