import java.util.LinkedList;
Map x;
private int lives=100;
private int cash=650;
private int waves=1;
private int barrier;

//hi;
Bloons tester1;
Bloons tester2;
//private ArrayList<ArrayList<Bloons>> balloon = new ArrayList<ArrayList<Bloons>>();
private ArrayList<Bloons> balloon = new ArrayList<Bloons>();
void setup() {
  size(953, 530);
  rect(823, 0, 130, 120);
  x = new Map("Map.png");
// Bloons tester1 = new Bloons(1, 4.5, 3.0, 227.0, false, false, x);
 //Bloons tester2 = new Bloons(1, 4.5, 3.0, 227.0, false, false, x);
  image(x.getMap(), 0, 0);
  fill(0);
  textSize(30);
  text("Lives: "+lives, 825, 30);
  text("Cash: "+cash, 825, 60);
  textSize(20);
  text("Wave "+waves+" out of \n85", 825, 90);
  for (int i = 0; i < balloon.size(); i++) {
    System.out.println(balloon.toString());
  }
}
void draw() {
  //setup();
  //text("" + mouseX + ", " + mouseY, 10, 10);
  image(x.getMap(), 0, 0);
  if(tester1.getDraw()){
    tester1.drawBloon();
  }
  tester1.changeCoord();
  if(tester2.getDraw()){
    tester2.drawBloon();
  }
  tester2.changeCoord();
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
