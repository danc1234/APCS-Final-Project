public class Monkey{
  // Fields
  private int cost;
  private int range;
  private int damage;
  private int placementRadius;
  private int reload;
  private float x;
  private float y;
  private boolean land;
  private boolean water;
  private boolean seeCamo;
  private Dart darts;
  private Bloons bloon;
  private boolean isdart = false;
  
  // Constructor
  public Monkey(int money, int area, int attack, int placement, int load, float placeX, float placeY, boolean landed, boolean watered, boolean camo) {
    cost = money;
    range = area;
    damage = attack;
    placementRadius = placement;
    reload = load;
    x = placeX;
    y = placeY;
    land = landed;
    water = watered;
    seeCamo = camo;
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
  // Methods
 public void drawMonkey(){
   circle(x, y, 60);
   if(darts != null){
     darts.changeCoord(bloon);
     darts.drawDart();
     if(darts.nearBloon(bloon, 3)){
       darts = null;
     isdart = false;
     }
   }
 }

 public void throwDart(ArrayList<Bloons> balloon){
    int index = 0;
    while(true){
    if(index >= balloon.size()){
    break;
    }
    if(balloon.get(index).inRange(x,y, range)){
      bloon = balloon.get(index);
      text("a", 50, 100);
      break;
    } 
    index++;
    }
    if(index < balloon.size()){
      if(isdart == false){
      darts = new Dart(1,50,x,y);
      isdart = true;
      }
    }
 }
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

}
