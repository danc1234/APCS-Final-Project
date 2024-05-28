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
  monkeys = new Monkey(0,60,0,0,0,50,100, false, false, false);
  darts = new Dart(10,1,100,10);
}
void draw() {
  //setup();
  //text("" + mouseX + ", " + mouseY, 10, 10);
  image(x.getMap(), 0, 0);
  for(int x = 0; x < balloon.size(); x++){
  if (balloon.get(x).getDraw()) {
    balloon.get(x).drawBloon();
  }
  darts.changeCoord(balloon.get(x));
  balloon.get(x).changeCoord();
  }
  darts.drawDart();
  monkeys.drawMonkey();
  monkeys.throwDart(balloon);
}
