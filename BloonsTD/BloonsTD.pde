import java.util.LinkedList;
Map x;
Dart darts;
Round rounds = new Round();
int countdown = 0;
//hi;
ArrayList<Bloons> balloon = new ArrayList<Bloons>();
PImage map;
Monkey monkeys;
int timer = 60;
void setup() {
  size(823, 530);
  map = loadImage("Map.png");
  image(map, 0, 0);
  balloon.add(new Bloons(5, (double)3, 4.5, 227.0, false, false, new Map("Map.png")));
  frameRate(100);
  monkeys = new Monkey("Monkeys/DartMonkey.jpeg",0,200,1,0,0,70,140, false, false, false);
}
void draw() {
  //setup();
  //text("" + mouseX + ", " + mouseY, 10, 10);
  if(countdown == 0){
    Bloons temp = rounds.getBloon();
    if(temp != null){
    balloon.add(temp);
    }
    countdown = 60;
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
    }
  }
  countdown--;
}
