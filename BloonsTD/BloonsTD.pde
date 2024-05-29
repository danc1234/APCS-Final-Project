import java.util.LinkedList;
Map x;
Dart darts;
//hi;
ArrayList<Bloons> balloon = new ArrayList<Bloons>();
Monkey monkeys;
void setup() {
  size(823, 530);
  x = new Map("Map.png");
  image(x.getMap(), 0, 0);
  balloon.add(new Boss(9, (double) 3, 4.0, 227.0, 901, 50, x, false, false));
  monkeys = new Monkey(0,100000,0,0,0,70,140, false, false, false);
}
void draw() {
  //setup();
  //text("" + mouseX + ", " + mouseY, 10, 10);
  image(x.getMap(), 0, 0);
  for(int x = 0; x < balloon.size(); x++){
  if (balloon.get(x).getDraw()) {
    balloon.get(x).drawBloon();
  }
  balloon.get(x).changeCoord();
  }
  monkeys.drawMonkey();
  monkeys.throwDart(balloon);
}
