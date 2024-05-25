public class Boss extends Bloons{
  // Fields
  int health;
  int stage;
  PImage balloon;
  
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
  
  public void drawBloon() {
    circle(this.getX(), this.getY(), 10);
    if (this.getLayers() == 9) {     
      if (health <= 2.5)  {
        balloon = loadImage("BalloonImages/CeramicDamage4.png"); 
      } else if (health <= 5) {
        balloon = loadImage("BalloonImages/CeramicDamage3.png");
      } else if (health <= 7.5) {
        balloon = loadImage("BalloonImages/CeramicDamage2.png"); 
      } else if (health < 10) {
        balloon = loadImage("BalloonImages/CeramicDamage1.png");
      } else {
        balloon = loadImage("BalloonIMages/CeramicBloon.png"); 
      }
      balloon.resize(70, 70);
      image(balloon, this.getX()-35, this.getY()-35);
    } else {
      if (health > 900) {
        
      } else if (health > 200) {
        
      } else {
        
      }
    }
  }
  
  
}
