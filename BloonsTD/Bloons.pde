public class Bloons{
  // Fields
  private boolean drawable = true;
  private int tilecount;
  private Map map;
  private Tile tile;
  private int layers;
  private double speed;
  private float x;
  private float y;
  private boolean camo;
  private boolean regrow;
  private boolean iced;
  private boolean glued;
  
  // Constructor
  public Bloons (int level, double velocity, float locationX, float locationY, boolean camoflauge, boolean regenerate, Map maps) {
    layers = level;
    speed = velocity;
    x = locationX;
    y = locationY;
    camo = camoflauge;
    regrow = regenerate;
    iced = false;
    glued = false;
    map = maps;
    tilecount = 0;
  }
  
  // Accessors
  public boolean getCamo() {
    return camo; 
  }
  public float getX(){
    return x;
  }
  public float getY(){
  return y;
  }
  public void popLayers(int pop){
    layers -= pop;
  }
  public int getLayers(){
    return layers;
  }
  public void changeSpeed(double speedFactor){
    speed += speedFactor;
  }
  public void addLayers(){
    layers++;
  }
  public void drawBloon(){
    circle(x, y, 20);
  }
  public void changeCoord(){
    x += getDirection().x;
    y += getDirection().y;
  }
  public void onTile(){
    if(tilecount == 0){
    tile = map.getTiles().removeFirst();
    tilecount++;
    }
  if(x > tile.getX() - 2 && x < tile.getX() + 2 && y > tile.getY() - 2 && y < tile.getY() + 2){
    if (map.tileCount > tilecount){
      tile = map.getTiles().removeFirst();
      tilecount++;
    }
    else{
      drawable = false;
    }
  }
  }
  public PVector getDirection(){
     onTile();
     float x = tile.getX();
     float y = tile.getY();
     PVector direction = new PVector(x - getX(), y - getY());
     direction.normalize();
     return direction;
  }
  public boolean getDraw(){
  return drawable;
}
}
