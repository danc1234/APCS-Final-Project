public class Bloons{
  // Fields
  private int layers;
  private double speed;
  private float x;
  private float y;
  private boolean camo;
  private boolean regrow;
  private boolean iced;
  private boolean glued;

  
  // Constructor
  public Bloons (int level, double velocity, float locationX, float locationY, boolean camoflauge, boolean regenerate) {
    layers = level;
    speed = velocity;
    x = locationX;
    y = locationY;
    camo = camoflauge;
    regrow = regenerate;
    iced = false;
    glued = false;
  }
  
  // Accessors
  public int getLayers() {
    return layers;
  }
  public boolean getCamo() {
    return camo; 
  }
  public float getX() {
    return x;
  }
  public float getY() {
    return y; 
  }/*
  public PVector getDirection {
     
  }*/
  
  // Methods
  public void changeSpeed(int popper) {
    speed = popper;
  }
  public void addLayers() {
    if (regrow) {
      layers++; 
    }
  }
  public void popLayers() {
    layers--; 
  }
  
  
  
  
}
