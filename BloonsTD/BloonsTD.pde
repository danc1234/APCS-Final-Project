import java.util.LinkedList;
//hi oingo boingo;
private static int lives=100;
private static int cash=650;
private static int waves=1;
private static int barrier;
private static boolean selectDart;
private static boolean selectSuper;
private static boolean selectSniper;
private static int round = 0;

private PImage RedBloon;
private PImage RedCamoBloon;
private PImage RedRegrowBloon;
private PImage RedCamoRegrowBloon;
private PImage BlueBloon;
private PImage BlueCamoBloon;
private PImage BlueRegrowBloon;
private PImage BlueCamoRegrowBloon;
private PImage GreenBloon;
private PImage GreenCamoBloon;
private PImage GreenRegrowBloon;
private PImage GreenCamoRegrowBloon;
private PImage YellowBloon;
private PImage YellowCamoBloon;
private PImage YellowRegrowBloon;
private PImage YellowCamoRegrowBloon;
private PImage PinkBloon;
private PImage PinkCamoBloon;
private PImage PinkRegrowBloon;
private PImage PinkCamoRegrowBloon;
private PImage BlackBloon;
private PImage BlackCamoBloon; 
private PImage BlackRegrowBloon;
private PImage BlackCamoRegrowBloon;
private PImage WhiteBloon; 
private PImage WhiteCamoBloon;
private PImage WhiteRegrowBloon;
private PImage WhiteCamoRegrowBloon; 
private PImage PurpleBloon; 
private PImage PurpleCamoBloon;
private PImage PurpleRegrowBloon; 
private PImage PurpleCamoRegrowBloon; 
private PImage LeadBloon;
private PImage LeadCamoBloon;
private PImage LeadRegrowBloon;
private PImage LeadCamoRegrowBloon;
private PImage ZebraBloon;
private PImage ZebraCamoBloon;
private PImage ZebraRegrowBloon;
private PImage ZebraCamoRegrowBloon;
private PImage RainbowBloon;
private PImage RainbowCamoBloon;
private PImage RainbowRegrowBloon ;
private PImage RainbowCamoRegrowBloon;
private PImage[] BloonDisplay;
private PImage[] BloonCamoDisplay;
private PImage[] BloonRegrowDisplay;
private PImage[] BloonCamoRegrowDisplay;

private PImage map;
private ArrayList<Bloons> balloon = new ArrayList<Bloons>();
private Round rounds;
private ArrayList<Monkey> towers = new ArrayList<Monkey>();
private int countdown = 0;
private boolean move = false;
private int totalWaves = 19;

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
  text("Wave "+waves+" out of \n"+totalWaves, 825, 90);
    fill(255);
    rect(823, 120, 65, 70);
    PImage dartMonkey = loadImage("Monkeys/DartMonkey.png");
    dartMonkey.resize(60, 60);
    image(dartMonkey, 826, 125);
      fill(255);
      rect(888, 120, 65, 70);
      PImage superMonkey = loadImage("Monkeys/SuperMonkey.png");
      image(superMonkey, 891, 125);
        fill(255);
        rect(823, 190, 65, 70);
        PImage SniperMonkey = loadImage("Monkeys/SniperMonkey.png");
        image(SniperMonkey, 832, 185);
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
  
RedBloon = loadImage("BalloonImages/RedBloon.png");
RedRegrowBloon = loadImage("RegrowthBloons/RedBloon.png");
RedCamoBloon = loadImage("CamoBloons/RedBloon.png");
RedCamoRegrowBloon = loadImage("CamoRegrowth/RedBloon.png");
BlueBloon = loadImage("BalloonImages/BlueBloon.png");
BlueRegrowBloon = loadImage("RegrowthBloons/BlueBloon.png");
BlueCamoBloon = loadImage("CamoBloons/BlueBloon.png");
BlueCamoRegrowBloon = loadImage("CamoRegrowth/BlueBloon.png");
GreenBloon = loadImage("BalloonImages/GreenBloon.png");
GreenRegrowBloon = loadImage("RegrowthBloons/GreenBloon.png");
GreenCamoBloon = loadImage("CamoBloons/GreenBloon.png");
GreenCamoRegrowBloon = loadImage("CamoRegrowth/GreenBloon.png");
YellowBloon = loadImage("BalloonImages/YellowBloon.png");
YellowRegrowBloon = loadImage("RegrowthBloons/YellowBloon.png");
YellowCamoBloon = loadImage("CamoBloons/YellowBloon.png");
YellowCamoRegrowBloon = loadImage("CamoRegrowth/YellowBloon.png");
PinkBloon = loadImage("BalloonImages/PinkBloon.png");
PinkRegrowBloon = loadImage("RegrowthBloons/PinkBloon.png");
PinkCamoBloon = loadImage("CamoBloons/PinkBloon.png");
PinkCamoRegrowBloon = loadImage("CamoRegrowth/PinkBloon.png");
BlackBloon = loadImage("BalloonImages/BlackBloon.png");
BlackRegrowBloon = loadImage("RegrowthBloons/BlackBloon.png");
BlackCamoBloon = loadImage("CamoBloons/BlackBloon.png");
BlackCamoRegrowBloon = loadImage("CamoRegrowth/BlackBloon.png");
WhiteBloon = loadImage("BalloonImages/WhiteBloon.png");
WhiteRegrowBloon = loadImage("RegrowthBloons/WhiteBloon.png");
WhiteCamoBloon = loadImage("CamoBloons/WhiteBloon.png");
WhiteCamoRegrowBloon = loadImage("CamoRegrowth/WhiteBloon.png");
PurpleBloon = loadImage("BalloonImages/PurpleBloon.png");
PurpleRegrowBloon = loadImage("RegrowthBloons/PurpleBloon.png");
PurpleCamoBloon = loadImage("CamoBloons/PurpleBloon.png");
PurpleCamoRegrowBloon = loadImage("CamoRegrowth/PurpleBloon.png");
LeadBloon = loadImage("BalloonImages/LeadBloon.png");
LeadRegrowBloon = loadImage("RegrowthBloons/LeadBloon.png");
LeadCamoBloon = loadImage("CamoBloons/LeadBloon.png");
LeadCamoRegrowBloon = loadImage("CamoRegrowth/LeadBloon.png");
ZebraBloon = loadImage("BalloonImages/ZebraBloon.png");
ZebraRegrowBloon = loadImage("RegrowthBloons/ZebraBloon.png");
ZebraCamoBloon = loadImage("CamoBloons/ZebraBloon.png");
ZebraCamoRegrowBloon = loadImage("CamoRegrowth/ZebraBloon.png");
RainbowBloon = loadImage("BalloonImages/RainbowBloon.png");
RainbowRegrowBloon = loadImage("RegrowthBloons/RainbowBloon.png");
RainbowCamoBloon = loadImage("CamoBloons/RainbowBloon.png");
RainbowCamoRegrowBloon = loadImage("CamoRegrowth/RainbowBloon.png");
BloonDisplay = new PImage[]{RedBloon, BlueBloon,GreenBloon, YellowBloon, PinkBloon, BlackBloon, WhiteBloon, PurpleBloon, LeadBloon, ZebraBloon, RainbowBloon};
BloonCamoDisplay = new PImage[]{RedCamoBloon, BlueCamoBloon,GreenCamoBloon, YellowCamoBloon, PinkCamoBloon, BlackCamoBloon, WhiteCamoBloon, PurpleCamoBloon, LeadCamoBloon, ZebraCamoBloon, RainbowCamoBloon};
BloonRegrowDisplay = new PImage[]{RedRegrowBloon, BlueRegrowBloon,GreenRegrowBloon, YellowRegrowBloon, PinkRegrowBloon, BlackRegrowBloon, WhiteRegrowBloon, PurpleRegrowBloon, LeadRegrowBloon, ZebraRegrowBloon, RainbowRegrowBloon};
BloonCamoRegrowDisplay = new PImage[]{RedCamoRegrowBloon, BlueCamoRegrowBloon,GreenCamoRegrowBloon, YellowCamoRegrowBloon, PinkCamoRegrowBloon, BlackCamoRegrowBloon, WhiteCamoRegrowBloon, PurpleCamoRegrowBloon, LeadCamoRegrowBloon, ZebraCamoRegrowBloon, RainbowCamoRegrowBloon};

rounds = new Round(BloonDisplay,BloonCamoDisplay, BloonRegrowDisplay, BloonCamoRegrowDisplay);

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
      countdown = 30;
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
        text("Wave "+waves+" out of \n"+totalWaves, 825, 90);
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
  if (waves > totalWaves && lives > 0 && balloon.size() == 0) {
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
  if (((mouseX < 888) && (mouseX > 823)) && ((mouseY > 190) && (mouseY < 260))) {
    selectSniper = true;
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
  if (((mouseX < 953) && (mouseX > 823)) && ((mouseY > 350) && (mouseY < 410)) && (balloon.size() == 0)) {
    round++;
    modifyCash(100+waves);
    waves++;
    if (waves <= totalWaves) {
      fill(255);
      rect(823, 0, 130, 120);
      fill(0);
      textSize(30);
      text("Lives: "+lives, 825, 30);
      textSize(25);
      text("Cash: "+cash, 825, 60);
      textSize(20);
      text("Wave "+waves+" out of \n"+totalWaves, 825, 90);
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
    towers.add(new Monkey("Monkeys/DartMonkey.png", 0, mouseX-25, mouseY+2));
    modifyCash(-170);
  }
  if (selectSuper && mouseX<805 && (red < 100 || blue < 100 || green < 100) && notInRange && (cash-2750>=0)) {
    towers.add(new Monkey("Monkeys/SuperMonkey.png", 0, mouseX-25, mouseY+2));
    modifyCash(-2750);
  }
  if (selectSniper && mouseX<805 && (red < 100 || blue < 100 || green < 100) && notInRange && (cash-300>=0)) {
    towers.add(new Monkey("Monkeys/SniperMonkey.png", 0, mouseX-25, mouseY+2));
    modifyCash(-300);
  }
  selectDart = false;
  selectSuper = false;
  selectSniper = false;
}

void selections() {
  if (selectDart && mouseX<805) {
    image(loadImage("Monkeys/DartMonkey.png"), mouseX-22, mouseY-15);
  }
  if (selectSuper && mouseX<785) {
    image(loadImage("Monkeys/SuperMonkey.png"), mouseX-22, mouseY-15);
  }
  if (selectSniper && mouseX<800) {
    image(loadImage("Monkeys/SniperMonkey.png"), mouseX-22, mouseY-15);
  }
}

public PImage[] getBloon() {
  return BloonDisplay; 
}
public PImage[] getCamoBloon() {
  return BloonCamoDisplay;
}
public PImage[] getRegrowBloon() {
  return BloonRegrowDisplay;
}
public PImage[] getCamoRegrowBloon() {
  return BloonCamoRegrowDisplay;
}
public void addBloons(Bloons a) {
  balloon.add(a); 
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
  text("Wave "+waves+" out of \n"+totalWaves, 825, 90);
}
