import java.util.LinkedList;

//hi;
private static int lives=100;
private static int cash=650;
private static int waves=1;
private static int barrier;

ArrayList<Bloons> balloon = new ArrayList<Bloons>();
Round rounds = new Round();
PImage map;
Monkey monkeys;
int timer = 60;
int countdown = 0;
Dart darts;

void setup() {
  size(953, 530);
  rect(823, 0, 130, 120);
  map = loadImage("Map.png");
  image(map, 0, 0);
  monkeys = new Monkey("Monkeys/DartMonkey.png",0,500,1,0,0,70,140, false, false, false);
  frameRate(120);
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
  fill(255);
  rect(823, 0, 130, 120);
  fill(0);
  textSize(30);
  text("Lives: "+lives, 825, 30);
  text("Cash: "+cash, 825, 60);
  textSize(20);
  text("Wave "+waves+" out of \n85", 825, 90);
  if(countdown == 0){
    Bloons temp = rounds.getBloon();
    if(temp != null){
      balloon.add(temp);
    }
    countdown = 5;
  }
  image(map, 0, 0);  
  for(int x = 0; x < balloon.size(); x++){
    if (balloon.get(x).getDraw()) {
      balloon.get(x).drawBloon();
    }
    balloon.get(x).changeCoord();
  }
  monkeys.drawMonkey();
  monkeys.throwDart(balloon); 
  for(int x = 0; x < balloon.size(); x++){
    if(balloon.get(x).getLayers() <= 0){
      balloon.remove(x);
    } else if ((balloon.get(x).getX() >= 369) && (balloon.get(x).getY() >= 520)) {
      if (lives - balloon.get(x).getDamage()<= 0) {
        lives = 0; 
        barrier = millis()+1000;
      } else {
        lives -= balloon.get(x).getDamage(); 
      }
      balloon.remove(x);
    }
  }
  countdown--;
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

public static void modifyCash(int stonks) {
  cash+=stonks;
}
