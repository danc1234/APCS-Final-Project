import java.util.LinkedList;
Map x;
private int lives=100;
private int cash=650;
private int waves=1;
private int barrier;

//hi;
private ArrayList<ArrayList<Bloons>> balloon = new ArrayList<ArrayList<Bloons>>();
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
  ArrayList<Bloons> a = new ArrayList<Bloons>();
    for (int i = 0; i < 19; i++) {
      a.add(new Bloons(1, 1, 3.0, 227.0, false, false, x));
    }
  ArrayList<Bloons> b = new ArrayList<Bloons>();
    for (int i = 0; i < 35; i++) {
      b.add(new Bloons(1, 1, 3.0, 227.0, false, false, x));
    }
  ArrayList<Bloons> c = new ArrayList<Bloons>();
    for (int i = 0; i < 5; i++) {
      b.add(new Bloons(2, 1.9, 3.0, 227.0, false, false, x));
    }
    for (int i = 0; i < 25; i++) {
      b.add(new Bloons(1, 1, 3.0, 227.0, false, false, x));
    }
  ArrayList<Bloons> c = new ArrayList<Bloons>();
    for (int i = 0; i < 18; i++) {
      c.add(new Bloons(2, 1.9, 3.0, 227.0, false, false, x));
    }
    for (int i = 0; i < 35; i++) {
      c.add(new Bloons(1, 1, 3.0, 227.0, false, false, x));
    }
  ArrayList<Bloons> d = new ArrayList<Bloons>();
  ArrayList<Bloons> e = new ArrayList<Bloons>();
  ArrayList<Bloons> f = new ArrayList<Bloons>();
  ArrayList<Bloons> g = new ArrayList<Bloons>();
  ArrayList<Bloons> h = new ArrayList<Bloons>();
  ArrayList<Bloons> i = new ArrayList<Bloons>();
  ArrayList<Bloons> j = new ArrayList<Bloons>();
  ArrayList<Bloons> k = new ArrayList<Bloons>();
  ArrayList<Bloons> l = new ArrayList<Bloons>();
  ArrayList<Bloons> m = new ArrayList<Bloons>();
  ArrayList<Bloons> n = new ArrayList<Bloons>();
  ArrayList<Bloons> o = new ArrayList<Bloons>();
  ArrayList<Bloons> p = new ArrayList<Bloons>();
  ArrayList<Bloons> q = new ArrayList<Bloons>();
  ArrayList<Bloons> r = new ArrayList<Bloons>();
  ArrayList<Bloons> s = new ArrayList<Bloons>();
  ArrayList<Bloons> t = new ArrayList<Bloons>();
  ArrayList<Bloons> u = new ArrayList<Bloons>();
  ArrayList<Bloons> v = new ArrayList<Bloons>();
  ArrayList<Bloons> x = new ArrayList<Bloons>();
  ArrayList<Bloons> y = new ArrayList<Bloons>();
  ArrayList<Bloons> z = new ArrayList<Bloons>();
  ArrayList<Bloons> aa = new ArrayList<Bloons>();
  ArrayList<Bloons> ab = new ArrayList<Bloons>();
  ArrayList<Bloons> ac = new ArrayList<Bloons>();
  ArrayList<Bloons> ad = new ArrayList<Bloons>();
  ArrayList<Bloons> ae = new ArrayList<Bloons>();
  ArrayList<Bloons> af = new ArrayList<Bloons>();
  ArrayList<Bloons> ag = new ArrayList<Bloons>();
  
  
}
