import java.util.LinkedList;
//hi oingo boingo;
private static int lives=100;
private static int cash=10000;
private static int waves=1;
private static int barrier;
private static boolean selectDart;
private static boolean selectSuper;
private static int round = 0;

private PImage map;
private ArrayList<Bloons> balloon = new ArrayList<Bloons>();
private Round rounds = new Round();
private ArrayList<Monkey> towers = new ArrayList<Monkey>();
private int countdown = 0;
private boolean move = false;

public int getRound() {
  return round;
}

void setup() {
  size(953, 530);
  rect(823, 0, 130, 120);
  map = loadImage("Map.png");
  image(map, 0, 0);
  frameRate(200);
  fill(0);
  textSize(30);
  text("Lives: "+lives, 825, 30);
  textSize(25);
  text("Cash: "+cash, 825, 60);
  textSize(20);
  text("Wave "+waves+" out of \n5", 825, 90);
  fill(255);
  rect(823, 120, 65, 70);
  PImage dartMonkey = loadImage("Monkeys/DartMonkey.png");
  dartMonkey.resize(60, 60);
  image(dartMonkey, 826, 125);
  fill(255);
  rect(888, 120, 65, 70);
  PImage superMonkey = loadImage("Monkeys/SuperMonkey.png");
  image(superMonkey, 891, 125);
  fill(#ADD8E6);
  rect(823, 410, 130, 120);
  fill(0);
  textSize(30);
  text("GO", 868, 480);
  fill(255);
  rect(823, 350, 130, 60);
  textSize(30);
  fill(0);
  text("Continue", 830, 390);
}

void draw() {
  image(map, 0, 0);
  for (int i = 0; i < towers.size(); i++) {
    towers.get(i).drawMonkey();
  }
  for (int x = 0; x < balloon.size(); x++) {
    if (balloon.get(x).getDraw()) {
      balloon.get(x).drawBloon();
    }
  }
  if (move) {
    if (countdown == 0) {
      Bloons temp = rounds.getBloon(round);
      if (temp != null) {
        balloon.add(temp);
      }
      countdown = 10;
    }
    for (int x = 0; x < balloon.size(); x++) {
      if (balloon.get(x).getDraw()) {
        balloon.get(x).drawBloon();
      }
      balloon.get(x).changeCoord();
    }
    for (int i = 0; i < towers.size(); i++) {
      towers.get(i).drawMonkey();
      if (millis() > towers.get(i).getReloadTimer() + towers.get(i).getReload()) {
        towers.get(i).throwDart(balloon);
        towers.get(i).resetTimer(millis());
      }
    }
    for (int x = 0; x < balloon.size(); x++) {
      if (balloon.get(x).getLayers() <= 0) {
        balloon.remove(x);
      } else if ((balloon.get(x).getX() >= 369) && (balloon.get(x).getY() >= 520)) {
        if (lives - balloon.get(x).getDamage()<= 0) {
          lives = 0;
          barrier = millis()+1000;
        } else {
          lives -= balloon.get(x).getDamage();
        }
        balloon.remove(x);
        fill(255);
        rect(823, 0, 130, 120);
        fill(0);
        textSize(30);
        text("Lives: "+lives, 825, 30);
        textSize(25);
        text("Cash: "+cash, 825, 60);
        textSize(20);
        text("Wave "+waves+" out of \n5", 825, 90);
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
  if (waves > 5 && lives > 0 && balloon.size() == 0) {
    int time = millis();
    if (time > barrier + 1000) {
      fill(#90EE90);
      rect(205.75, 225, 411.5, 100);
      fill(0);
      textSize(40);
      text("Have your good share of \n               bananas!", 207, 265);
    } 
  }
  selections();
}

void mouseClicked() {
  if (((mouseX < 888) && (mouseX > 823)) && ((mouseY > 120) && (mouseY < 190))) {
    selectDart = true;
  }
  if (((mouseX >= 888) && (mouseX < 953)) && ((mouseY > 120) && (mouseY < 190))) {
    selectSuper = true;
  }
  if (((mouseX < 953) && (mouseX > 823)) && ((mouseY > 410) && (mouseY < 530))) {
    if (move) {
      fill(#ADD8E6);
      rect(823, 410, 130, 120);
      fill(0);
      textSize(30);
      text("GO", 868, 480);
      move = false;
    } else {
      fill(#ADD8E6);
      rect(823, 410, 130, 120);
      fill(0);
      textSize(30);
      text("STOP", 855, 480);
      move = true;
    }
  }
  if (((mouseX < 953) && (mouseX > 823)) && ((mouseY > 350) && (mouseY < 410))) {
    round++;
    waves++;
    if (waves <= 5) {
      fill(255);
      rect(823, 0, 130, 120);
      fill(0);
      textSize(30);
      text("Lives: "+lives, 825, 30);
      textSize(25);
      text("Cash: "+cash, 825, 60);
      textSize(20);
      text("Wave "+waves+" out of \n5", 825, 90);
    } 
    rounds.restartBalloon();
  }
}

void mouseReleased() {
  float red = red(map.get(mouseX, mouseY));
  float green = green(map.get(mouseX, mouseY));
  float blue = blue(map.get(mouseX, mouseY));
  boolean notInRange = true;
  for (int i = 0; i < towers.size(); i++) {
    if (towers.get(i).inRange(mouseX, mouseY)) {
      notInRange = false;
    }
  }
  if (selectDart && mouseX<805 && (red < 100 || blue < 100 || green < 100) && notInRange && (cash-170>=0)) {
    towers.add(new Monkey("Monkeys/DartMonkey.png", 0, 1, mouseX-25, mouseY+2));
    modifyCash(-170);
  }
  if (selectSuper && mouseX<805 && (red < 100 || blue < 100 || green < 100) && notInRange && (cash-2750>=0)) {
    towers.add(new Monkey("Monkeys/SuperMonkey.png", 0, 1, mouseX-25, mouseY+2));
    modifyCash(-2750);
  }
  selectDart = false;
  selectSuper = false;
}

void selections() {
  if (selectDart && mouseX<805) {
    image(loadImage("Monkeys/DartMonkey.png"), mouseX-22, mouseY-15);
  }
  if (selectSuper && mouseX<785) {
    image(loadImage("Monkeys/SuperMonkey.png"), mouseX-22, mouseY-15);
  }
}

public void modifyCash(int stonks) {
  cash+=stonks;
  fill(255);
  rect(823, 0, 130, 120);
  fill(0);
  textSize(30);
  text("Lives: "+lives, 825, 30);
  textSize(25);
  text("Cash: "+cash, 825, 60);
  textSize(20);
  text("Wave "+waves+" out of \n5", 825, 90);
}

private PImage RedBloon = loadImage("BalloonImages/RedBloon.png");
private PImage RedCamoBloon = loadImage("RegrowthBloons/RedBloon.png");
private PImage RedRegrowBloon = loadImage("CamoBloons/RedBloon.png");
private PImage RedCamoRegrowBloon = loadImage("CamoRegrowth/RedBloon.png");
private PImage BlueBloon = loadImage("BalloonImages/BlueBloon.png");
private PImage BlueCamoBloon = loadImage("RegrowthBloons/BlueBloon.png");
private PImage BlueRegrowBloon = loadImage("CamoBloons/BlueBloon.png");
private PImage BlueCamoRegrowBloon = loadImage("CamoRegrowth/BlueBloon.png");
private PImage GreenBloon = loadImage("BalloonImages/GreenBloon.png");
private PImage GreenCamoBloon = loadImage("RegrowthBloons/GreenBloon.png");
private PImage GreenRegrowBloon = loadImage("CamoBloons/GreenBloon.png");
private PImage GreenCamoRegrowBloon = loadImage("CamoRegrowth/GreenBloon.png");
private PImage YellowBloon = loadImage("BalloonImages/YellowBloon.png");
private PImage YellowCamoBloon = loadImage("RegrowthBloons/YellowBloon.png");
private PImage YellowRegrowBloon = loadImage("CamoBloons/YellowBloon.png");
private PImage YellowCamoRegrowBloon = loadImage("CamoRegrowth/YellowBloon.png");
private PImage PinkBloon = loadImage("BalloonImages/PinkBloon.png");
private PImage PinkCamoBloon = loadImage("RegrowthBloons/PinkBloon.png");
private PImage PinkRegrowBloon = loadImage("CamoBloons/PinkBloon.png");
private PImage PinkCamoRegrowBloon = loadImage("CamoRegrowth/PinkBloon.png");
