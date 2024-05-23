public class Boss extends Bloons{
  // Fields
  int health;
  int stage;
  
  // Constructor
  public Boss (int level, double velocity, float locationX, float locationY, int healthy, int area) {
    super(level, velocity, locationX, locationY, false, false); 
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
