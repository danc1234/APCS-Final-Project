public class Monkey{
  // Fields
  private int cost;
  private int range;
  private int damage;
  private int placementRadius;
  private int reload;
  private float direction = 0;
  private float x;
  private float y;
  private boolean land;
  private boolean water;
  private boolean seeCamo;
  private Dart darts;
  private Bloons bloon;
  private boolean isdart = false;
  private PImage sprite;
  private String link;
  private int reloadTimer = millis();
  
  // Constructor
  public Monkey(String image, int money, int attack, float placeX, float placeY) {
    cost = money;
    damage = attack;
    x = placeX;
    y = placeY;
    link = image;
    sprite = loadImage(image);
    attributeDeclarer();
  }
  
  public void attributeDeclarer() {
    if (link.equals("Monkeys/SuperMonkey.png")) {
      reload = 0; 
      range = 200;
      seeCamo = false;
      land = true;
      water = false;
      placementRadius = 50;
    } else if (link.equals("Monkeys/DartMonkey.png")) {
      reload = 400; 
      range = 100;
      seeCamo = false;
      land = true;
      water = false;
      placementRadius = 50;
    }
  }

  
  // Accessors 
  public Dart getDart(){
    return darts;
  }
  public int getCost() {
    return cost;
  }
  public float getX() {
    return x; 
  }
  public float getY() {
    return y; 
  }
  public int getRange(){
    return range;
  }
  public int getReload() {
    return reload; 
  }
  public int getReloadTimer() {
    return reloadTimer; 
  }
  public PImage getSprite() {
    return sprite;
  }
  
  public void resetTimer(int a) {
     reloadTimer = a;
  }
  
  // Methods
  public void drawMonkey(){
    pushMatrix();
    imageMode(CENTER);
    translate(x+22,y-5);
    rotate(radians(degrees(90+direction)));
    image(sprite,0,0);
    imageMode(CORNERS);
    popMatrix();
    if(darts != null){
     darts.changeCoord(bloon);
     darts.drawDart();
     direction = darts.getAngle();
     if(darts.nearBloon(bloon)){
       bloon.popLayers(damage);
       modifyCash(damage);
       darts = null;
       isdart = false;
     }
   }  
 }

  public boolean inRange(float xc, float yc){
    return (dist(xc, yc, x, y) < placementRadius);
  }
  
  public void throwDart(ArrayList<Bloons> balloon){
    int index = 0;
    while(true){
    if(index >= balloon.size()){
      break;
    }
    if(balloon.get(index).inRange(x,y, range)){
      bloon = balloon.get(index);
      //text("a", 50, 100);
      break;
    } 
    index++;
    }
    if(index < balloon.size()){
      if(!isdart){
        darts = new Dart(1,10,x,y);
        isdart = true;
      }
    }
 }
 

  

}
