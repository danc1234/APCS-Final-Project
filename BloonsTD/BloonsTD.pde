void setup(){
  size(823, 530);
  Map x = new Map("Map.png");
  image(x.getMap(),0,0);
  
}
void draw(){
  setup();
  text("" + mouseX + ", " + mouseY, 10, 10);
  
}
