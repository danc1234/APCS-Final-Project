import java.util.LinkedList;
//test
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
  frameRate(50);
  size(823, 530);
  map = loadImage("Map.png");
  image(map, 0, 0);
  monkeys = new Monkey(0,200,1,0,0,70,140, false, false, false);
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
