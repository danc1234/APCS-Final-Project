import java.util.LinkedList;
//hi oingo boingo;
private static int lives=100;
private static int cash=99999;
private static int waves=1;
private static int barrier;
private static boolean selectDart;
private static boolean selectSuper;
private static boolean selectSniper;
private static boolean selectNinja;
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
private PImage CeramicBloon;
private PImage CeramicCamoBloon;
private PImage CeramicRegrowBloon ;
private PImage CeramicCamoRegrowBloon;
private PImage Ceramic1;
private PImage CeramicCamo1;
private PImage CeramicRegrow1;
private PImage CeramicCamoRegrow1;
private PImage Ceramic2;
private PImage CeramicCamo2;
private PImage CeramicRegrow2;
private PImage CeramicCamoRegrow2;
private PImage Ceramic3;
private PImage CeramicCamo3;
private PImage CeramicRegrow3;
private PImage CeramicCamoRegrow3;
private PImage Ceramic4;
private PImage CeramicCamo4;
private PImage CeramicRegrow4;
private PImage CeramicCamoRegrow4;
private PImage MoabRight;
private PImage MoabUp;
private PImage MoabLeft;
private PImage MoabDown;
private PImage BFBRight;
private PImage BFBUp;
private PImage BFBLeft;
private PImage BFBDown;
private PImage ZOMGRight;
private PImage ZOMGUp;
private PImage ZOMGLeft;
private PImage ZOMGDown;

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
private int totalWaves = 18;

void setup() {
  size(953, 600);
  fill(#000000);
  rect(0, 530, 823, 70);
  fill(0);
  rect(823, 0, 130, 530);
  fill(255);
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
          fill(255);
          rect(888, 190, 65, 70);
          PImage NinjaMonkey = loadImage("Monkeys/NinjaMonkey.png");
          image(NinjaMonkey, 897, 199);   
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
CeramicBloon = loadImage("BalloonImages/CeramicBloon.png");
CeramicCamoBloon = loadImage("CamoBloons/CeramicBloon.png");
CeramicRegrowBloon = loadImage("RegrowthBloons/CeramicBloon.png");
CeramicCamoRegrowBloon = loadImage("CamoRegrowth/CeramicBloon.png");
Ceramic1 = loadImage("BalloonImages/CeramicDamage1.png");
CeramicCamo1 = loadImage("CamoBloons/CeramicDamage1.png"); 
CeramicRegrow1 = loadImage("RegrowthBloons/CeramicDamage1.png");
CeramicCamoRegrow1 = loadImage("CamoRegrowth/CeramicDamage1.png");
Ceramic2 = loadImage("BalloonImages/CeramicDamage2.png");
CeramicCamo2 = loadImage("CamoBloons/CeramicDamage2.png");
CeramicRegrow2 = loadImage("RegrowthBloons/CeramicDamage2.png");;
CeramicCamoRegrow2 = loadImage("CamoRegrowth/CeramicDamage2.png");
Ceramic3 = loadImage("BalloonImages/CeramicDamage3.png");
CeramicCamo3 = loadImage("CamoBloons/CeramicDamage3.png");
CeramicRegrow3 = loadImage("RegrowthBloons/CeramicDamage3.png");
CeramicCamoRegrow3 = loadImage("CamoRegrowth/CeramicDamage3.png");
Ceramic4 = loadImage("BalloonImages/CeramicDamage4.png");
CeramicCamo4 = loadImage("CamoBloons/CeramicDamage4.png");
CeramicRegrow4 = loadImage("RegrowthBloons/CeramicDamage4.png");
CeramicCamoRegrow4 = loadImage("CamoRegrowth/CeramicDamage4.png");
MoabRight = loadImage("BalloonImages/MoabRight.png");
MoabRight.resize(132, 86);
MoabUp = loadImage("BalloonImages/MoabUp.png");
MoabUp.resize(86, 132);
MoabLeft = loadImage("BalloonImages/MoabLeft.png");
MoabLeft.resize(132, 86);
MoabDown = loadImage("BalloonImages/MoabDown.png");
MoabDown.resize(86, 132);
BFBRight = loadImage("BalloonImages/BFBRight.png");
BFBRight.resize(202, 142);
BFBUp = loadImage("BalloonImages/BFBUp.png");
BFBUp.resize(142, 202);
BFBLeft = loadImage("BalloonImages/BFBLeft.png");
BFBLeft.resize(202, 142);
BFBDown = loadImage("BalloonImages/BFBDown.png");
BFBDown.resize(142, 202);
ZOMGRight = loadImage("BalloonImages/ZOMGRight.png");
ZOMGRight.resize(222, 141);
ZOMGUp = loadImage("BalloonImages/ZOMGUp.png");
ZOMGUp.resize(141, 222);
ZOMGLeft = loadImage("BalloonImages/ZOMGLeft.png");
ZOMGLeft.resize(222, 141);
ZOMGDown = loadImage("BalloonImages/ZOMGDown.png");
ZOMGDown.resize(141, 222);

BloonDisplay = new PImage[]{RedBloon, BlueBloon,GreenBloon, YellowBloon, PinkBloon, BlackBloon, WhiteBloon, PurpleBloon, LeadBloon, ZebraBloon, RainbowBloon
,CeramicBloon, Ceramic1, Ceramic2, Ceramic3, Ceramic4,
MoabRight, MoabUp, MoabLeft, MoabDown,
BFBRight, BFBUp, BFBLeft, BFBDown,
ZOMGRight, ZOMGUp, ZOMGLeft, ZOMGDown};
BloonCamoDisplay = new PImage[]{RedCamoBloon, BlueCamoBloon,GreenCamoBloon, YellowCamoBloon, PinkCamoBloon, BlackCamoBloon, WhiteCamoBloon, PurpleCamoBloon, LeadCamoBloon, ZebraCamoBloon, RainbowCamoBloon
,CeramicCamoBloon, CeramicCamo1, CeramicCamo2, CeramicCamo3, CeramicCamo4};
BloonRegrowDisplay = new PImage[]{RedRegrowBloon, BlueRegrowBloon,GreenRegrowBloon, YellowRegrowBloon, PinkRegrowBloon, BlackRegrowBloon, WhiteRegrowBloon, PurpleRegrowBloon, LeadRegrowBloon, ZebraRegrowBloon, RainbowRegrowBloon
,CeramicRegrowBloon, CeramicRegrow1, CeramicRegrow2, CeramicRegrow3, CeramicRegrow4};
BloonCamoRegrowDisplay = new PImage[]{RedCamoRegrowBloon, BlueCamoRegrowBloon,GreenCamoRegrowBloon, YellowCamoRegrowBloon, PinkCamoRegrowBloon, BlackCamoRegrowBloon, WhiteCamoRegrowBloon, PurpleCamoRegrowBloon, LeadCamoRegrowBloon, ZebraCamoRegrowBloon, RainbowCamoRegrowBloon
,CeramicCamoRegrowBloon, CeramicCamoRegrow1, CeramicCamoRegrow2, CeramicCamoRegrow3, CeramicCamoRegrow4};
for (int i = 0; i < 5; i++) {
  BloonDisplay[i].resize(70, 70);
  BloonCamoDisplay[i].resize(70, 70);
  BloonRegrowDisplay[i].resize(70, 70);
  BloonCamoRegrowDisplay[i].resize(70, 70);
}
for (int i = 5; i < 11; i++) {
  BloonDisplay[i].resize(60, 60);
  BloonCamoDisplay[i].resize(60, 60);
  BloonRegrowDisplay[i].resize(60, 60);
  BloonCamoRegrowDisplay[i].resize(60, 60);
}


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
      if (balloon.get(x).getRegrow()) {
        if (!balloon.get(x).getHitOnce()) {
          balloon.get(x).resetTimer(millis()+1000);
        }
        if ((balloon.get(x).getLayers() < balloon.get(x).getOGLayers()) && (millis() > balloon.get(x).getRegrowthTimer() + 3000)) {
          balloon.get(x).popLayers(-1); 
          balloon.get(x).resetTimer(millis());
        }
      }      
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
      fill(#FF0000);
      rect(205.75, 225, 411.5, 100);
      fill(0);
      textSize(40);
      text("HOW DARE YOU LET THE \n           BLOONS WIN!!!", 207, 265);
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
    fill(#FFFF00);
    rect(823, 310, 130, 40);
    fill(#000000);
    text("Cost: "+170, 830, 340);
  }
  if (((mouseX >= 888) && (mouseX < 953)) && ((mouseY > 120) && (mouseY < 190))) {
    selectSuper = true;
    fill(#FFFF00);
    rect(823, 310, 130, 40);
    fill(#000000);
    textSize(25);
    text("Cost: "+2750, 830, 340);
  }
  if (((mouseX < 888) && (mouseX > 823)) && ((mouseY > 190) && (mouseY < 260))) {
    selectSniper = true;
    fill(#FFFF00);
    rect(823, 310, 130, 40);
    fill(#000000);
    textSize(30);
    text("Cost: "+300, 830, 340);
  }
  if (((mouseX < 953) && (mouseX >= 888)) && ((mouseY > 190) && (mouseY < 260))) {
    selectNinja = true;
    fill(#FFFF00);
    rect(823, 310, 130, 40);
    fill(#000000);
    textSize(30);
    text("Cost: "+500, 830, 340);
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
  for (int i = 0; i < towers.size(); i++) {
    if (towers.get(i).inRange(mouseX, mouseY)) {
      if (towers.get(i).getWasPlaced()) {
        towers.get(i).setUpgradeMode(true);
        fill(#964B00);
        rect(0, 530, 823, 70); 
        fill(#000000);
        rect(290, 530, 150, 70);
        rect(730, 530, 93, 70);
        // DChoe, this is where you start placing the upgrades of the other monkeys so that it shows up in the screen
        // The actual effects of the monkeys, you place in the Monkey class, where there are a bunch of void functions
        // modifying the variables based off what type of monkey it is.
        if (towers.get(i).getLink().equals("Monkeys/NinjaMonkey.png")) {
           if (!towers.get(i).getUpgrade1a()) {
             fill(#FFA500);
             textSize(20);
             text("Ninja Discipline: Increase \nRange and Attack Speed (300)", 5, 560);       
           } else if (!towers.get(i).getUpgrade2a()) {
             fill(#FFA500);
             textSize(20);
             text("Flamed: Ninja's shurikens can \nburn through lead (500)", 5, 560);
           } else {
             fill(#FFA500);
             textSize(40);
             text("Path Closed", 5, 580); 
           }
           if (!towers.get(i).getUpgrade1b()) {
             fill(#FFA500);
             textSize(20);
             text("Sharp Shurikens: Shurikens \ndo 2 Damage (200)", 450, 560);
           } else if (!towers.get(i).getUpgrade2b()) {
             fill(#FFA500);
             textSize(20);
             text("Sharper Shurikens: Shurikens \ndo 4 Damage (400)", 450, 560); 
           } else {
             fill(#FFA500);
             textSize(40);
             text("Path Closed", 445, 580); 
           }
        } else if (towers.get(i).getLink().equals("Monkeys/SuperMonkey.png")) {
           if (!towers.get(i).getUpgrade1a()) {
             fill(#FFA500);
             textSize(20);
             text("Super Range: Increase \nRange (1000)", 5, 560);       
           } else if (!towers.get(i).getUpgrade2a()) {
             fill(#FFA500);
             textSize(20);
             text("Epic Range: Why settle for Super \n when you can have epic? (1500)", 5, 560);
           } else {
             fill(#FFA500);
             textSize(40);
             text("Path Closed", 5, 580); 
           }
           if (!towers.get(i).getUpgrade1b()) {
             fill(#FFA500);
             textSize(20);
             text("Camo: Grants Camo Sight to \n SuperMonkey (500)",450, 560);
           } else if (!towers.get(i).getUpgrade2b()) {
             fill(#FFA500);
             textSize(18);
             text("Plasma Beams: Plasma beams do \na whopping 6 damage per hit! (2500)", 450, 560); 
           } else {
             fill(#FFA500);
             textSize(40);
             text("Path Closed", 445, 580); 
           }
        }
        else if (towers.get(i).getLink().equals("Monkeys/SniperMonkey.png")) {
           if (!towers.get(i).getUpgrade1a()) {
             fill(#FFA500);
             textSize(20);
             text("Shoot faster (1000)", 5, 560);       
           } else if (!towers.get(i).getUpgrade2a()) {
             fill(#FFA500);
             textSize(20);
             text("Shoot faster than the fast(3000)", 5, 560);
           } else {
             fill(#FFA500);
             textSize(40);
             text("Path Closed", 5, 580); 
           }
           if (!towers.get(i).getUpgrade1b()) {
             fill(#FFA500);
             textSize(20);
             text("Stronger the better (1000)",450, 560);
           } else if (!towers.get(i).getUpgrade2b()) {
             fill(#FFA500);
             textSize(18);
             text("Strongest the better. Sniper does 14 damage!!! \n   (3000)", 450, 560); 
           } else {
             fill(#FFA500);
             textSize(40);
             text("Path Closed", 445, 580); 
           }
        }
        else if (towers.get(i).getLink().equals("Monkeys/DartMonkey.png")) {
           if (!towers.get(i).getUpgrade1a()) {
             fill(#FFA500);
             textSize(20);
             text("See Camo (500)", 5, 560);       
           } else if (!towers.get(i).getUpgrade2a()) {
             fill(#FFA500);
             textSize(20);
             text("See further (1000)", 5, 560);
           } else {
             fill(#FFA500);
             textSize(40);
             text("Path Closed", 5, 580); 
           }
           if (!towers.get(i).getUpgrade1b()) {
             fill(#FFA500);
             textSize(20);
             text("Sharper darts (500)",450, 560);
           } else if (!towers.get(i).getUpgrade2b()) {
             fill(#FFA500);
             textSize(18);
             text("Heated darts (pop lead)  (1000)", 450, 560); 
           } else {
             fill(#FFA500);
             textSize(40);
             text("Path Closed", 445, 580); 
           }
        }
        // DChoe, this is NinjaMonkey done. Copy and paste the above block of code and seperate with comments to make easier reading
      } else { 
        towers.get(i).setPlaced(); 
      }
    }
    if (((mouseX < 290) && (mouseX > 0)) && ((mouseY > 530) && (mouseY < 600)) && towers.get(i).getUpgradeMode() && !towers.get(i).getUpgrade1a()) {
      towers.get(i).activateUpgrade1a();        
    } else if (((mouseX < 290) && (mouseX > 0)) && ((mouseY > 530) && (mouseY < 600)) && towers.get(i).getUpgradeMode() && !towers.get(i).getUpgrade2a()) {
      towers.get(i).activateUpgrade2a();        
    } else if (((mouseX < 720) && (mouseX > 440)) && ((mouseY > 530) && (mouseY < 600)) && towers.get(i).getUpgradeMode() && !towers.get(i).getUpgrade1b()) {
      towers.get(i).activateUpgrade1b();        
    } else if (((mouseX < 720) && (mouseX > 440)) && ((mouseY > 530) && (mouseY < 600)) && towers.get(i).getUpgradeMode() && !towers.get(i).getUpgrade2b()) {
      towers.get(i).activateUpgrade2b();        
    } 
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
    towers.add(new Monkey("Monkeys/DartMonkey.png", mouseX-25, mouseY+2));
    modifyCash(-170);
    fill(0);
    rect(823, 310, 130, 40);     
  }
  if (selectSuper && mouseX<805 && (red < 100 || blue < 100 || green < 100) && notInRange && (cash-2750>=0)) {
    towers.add(new Monkey("Monkeys/SuperMonkey.png", mouseX-25, mouseY+2));
    modifyCash(-2750);
    fill(0);
    rect(823, 310, 130, 40);     
  }
  if (selectSniper && mouseX<805 && (red < 100 || blue < 100 || green < 100) && notInRange && (cash-300>=0)) {
    towers.add(new Monkey("Monkeys/SniperMonkey.png", mouseX-25, mouseY+2));
    modifyCash(-300);
    fill(0);
    rect(823, 310, 130, 40);     
  }
  if (selectNinja && mouseX<805 && (red < 100 || blue < 100 || green < 100) && notInRange && (cash-500>=0)) {
    towers.add(new Monkey("Monkeys/NinjaMonkey.png", mouseX-25, mouseY+2));
    modifyCash(-500);
    fill(0);
    rect(823, 310, 130, 40);     
  }
  selectDart = false;
  selectSuper = false;
  selectSniper = false;
  selectNinja = false;
 
  
  
}

void keyPressed() {
  if (key == ' ') {
    round++;
    waves++;
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
  if (selectNinja && mouseX<792) {
    image(loadImage("Monkeys/NinjaMonkey.png"), mouseX-22, mouseY-15);
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

public int getCash() {
  return cash; 
}
