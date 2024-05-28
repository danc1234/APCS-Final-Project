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
   darts.drawDart();
   darts.changeCoord(bloon);
   }
 }
 
 public void throwDart(ArrayList<Bloons> balloon){
    int index = 0;
    while(true){
    if(index >= balloon.size()){
    break;
    }
    if(balloon.get(index).inRange(this)){
      bloon = balloon.get(index);
      break;
    } 
    index++;
    }
    if(index < balloon.size()){
      darts = new Dart(1,  4,x,y);
    }
 }
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

}
