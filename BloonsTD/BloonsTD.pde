import java.util.LinkedList;
Map x;
int lives=100;
int cash=650;
int waves=0;

//hi;
Bloons balloon;
void setup() {
  size(953, 530);
  rect(823, 0, 130, 130);
  fill(0);/*
  PFont bloonsFont = createFont("andalemo.ttf", 128);
  textFont(bloonsFont);*/
  textSize(30);
  text("Lives: "+lives, 825, 30);
  text("Cash: "+cash, 825, 60);
  textSize(20);
  text("Wave "+waves+" out of \n85", 825, 90);
  x = new Map("Map.png");
  image(x.getMap(), 0, 0);
  balloon = new Boss(9, (double) 4.5, 3.0, 227.0, 901, 50, x, true, false);
}
void draw() {
  //setup();
  //text("" + mouseX + ", " + mouseY, 10, 10);
  image(x.getMap(), 0, 0);
  if (balloon.getDraw()) {
    balloon.drawBloon();
  }
  balloon.changeCoord();
}
