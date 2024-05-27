import java.util.LinkedList;
Map x;
static int lives=100;
static int cash=650;
static int waves=1;

//hi;
private static ArrayList<Bloons> balloon = new ArrayList<Bloons>();
void setup() {
  size(953, 530);
  rect(823, 0, 130, 120);
  x = new Map("Map.png");
  image(x.getMap(), 0, 0);
  balloon.add(new Boss(9, (double) 4.5, 3.0, 227.0, 901, 50, x, true, true));
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
}

public static void setLives(int damage) {
  lives -= damage;
}
public static void advanceWaves() {
  waves++;
}
public static void modifyBloonList() {
  balloon.remove(0); 
}
