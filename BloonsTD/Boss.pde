public class Boss extends Bloons{
  // Fields
  int health;
  int stage;
  
  // Constructor
  public Boss (int level, double velocity, float locationX, float locationY, int healthy, int area, Map map) {
    super(level, velocity, locationX, locationY, false, false, map); 
    health = healthy;
    stage = area;
  }
  
  // Accessors
  public int getHealth() {
    return health; 
  }
  public int getStage() {
    return stage; 
  }
  
  
}
