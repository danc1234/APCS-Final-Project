import java.util.LinkedList;
Map x;
Dart darts;
//hi;
ArrayList<Bloons> balloon = new ArrayList<Bloons>();
PImage map;
Monkey monkeys;
int timer;
void setup() {
  size(823, 530);
  map = loadImage("Map.png");
  image(map, 0, 0);
  balloon.add(new Bloons(5, (double)3, 4.5, 227.0, false, false, new Map("Map.png")));
  balloon.add(new Bloons(5, (double)3, 4.5, 227.0, false, false, new Map("Map.png")));
  monkeys = new Monkey(0,200,1,0,0,70,140, false, false, false);
    if (balloon.get(0).getDraw()) {
      balloon.get(0).drawBloon();
    }
}
void draw() {
  //setup();
  //text("" + mouseX + ", " + mouseY, 10, 10);
  image(map, 0, 0);
  int timer = 0;
  for(int x = 0; x < balloon.size(); x++){
    if (balloon.get(x).getDraw()) {
      balloon.get(x).drawBloon();
    }
    while(timer < 1) {
      balloon.get(0).changeCoord(); 
      timer++;
    }
    System.out.println("This is timer: "+timer);
    balloon.get(x).changeCoord();
  }/*
    if (balloon.get(0).getDraw()) {
      balloon.get(0).drawBloon();
    }
    System.out.println(millis());
    while(millis() < 1000) {
      balloon.get(0).changeCoord(); 
    }
    balloon.get(0).changeCoord();
    if (balloon.get(1).getDraw()) {
      balloon.get(1).drawBloon();
    }
    balloon.get(1).changeCoord();*/
  monkeys.drawMonkey();
  monkeys.throwDart(balloon); 
  for(int x = 0; x < balloon.size(); x++){
    if(balloon.get(x).getLayers() <= 0){
      balloon.remove(x);
    }
  }
}
