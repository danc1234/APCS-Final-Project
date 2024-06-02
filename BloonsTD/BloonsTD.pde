import java.util.LinkedList;

//hi;
private static int lives=100;
private static int cash=650;
private static int waves=1;
private static int barrier;
private static boolean select;

ArrayList<Bloons> balloon = new ArrayList<Bloons>();
Round rounds = new Round();
PImage map;
Monkey monkeys;
ArrayList<Monkey> towers = new ArrayList<Monkey>();
int timer = 60;
int countdown = 0;
Dart darts;

void setup() {
  size(953, 530);
  rect(823, 0, 130, 120);
  map = loadImage("Map.png");
  image(map, 0, 0);
  towers.add(new Monkey("Monkeys/DartMonkey.png", 0, 1, 0, 200, 190));
  towers.add(new Monkey("Monkeys/SuperMonkey.png", 0, 1, 0, 200, 280));
  frameRate(200);
  fill(0);
  textSize(30);
  text("Lives: "+lives, 825, 30);
  text("Cash: "+cash, 825, 60);
  textSize(20);
  text("Wave "+waves+" out of \n85", 825, 90);
    fill(255);
    rect(823, 120, 65, 70);
    PImage dartMonkey = loadImage("Monkeys/DartMonkey.png");
    dartMonkey.resize(60, 60);
    image(dartMonkey, 826, 125);
      fill(255);
      rect(888, 120, 65, 70);
      PImage superMonkey = loadImage("Monkeys/SuperMonkey.png");
      image(superMonkey, 891, 125);
}

void draw() {
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
  for (int i = 0; i < towers.size(); i++) {
    towers.get(i).drawMonkey();
    
    if (millis() > towers.get(i).getReloadTimer() + towers.get(i).getReload()) {
      towers.get(i).throwDart(balloon); 
      towers.get(i).resetTimer(millis());
    }     
  }
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
  if (select && mouseX<805) {
    image(loadImage("Monkeys/DartMonkey.png"), mouseX-22, mouseY-15); 
  }
}

void mouseClicked() {  
  if (((mouseX < 888) && (mouseX > 823)) && ((mouseY > 120) && (mouseY < 190))) {
    println("This is x: "+mouseX);
    println("This is y: "+mouseY);  
    select = true;
  }  
}

void mouseReleased() {
  if (select) {
    towers.add(new Monkey("Monkeys/DartMonkey.png", 0, 1, 0, mouseX-25, mouseY+2));
    select = false;
  }
}





public static void modifyCash(int stonks) {
  cash+=stonks;
}
