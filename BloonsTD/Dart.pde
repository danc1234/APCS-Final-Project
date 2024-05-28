public class Dart{
  private boolean drawable = true;
  // Fields
  int size;
  double speed;
  float x;
  float y;
  
  public Dart(int biggy, double IAmSpeed, float floatX, float floatY) {
    size = biggy;
    speed = IAmSpeed;
    x = floatX;
    y = floatY;
  }
  
  // Accessors
  public float getX() {
    return x; 
  }
  public float getY() {
    return y; 
  }
  public void drawDart(){
    circle(5, x, y);
  }
  public boolean nearBloon(Bloons x, int damage){
  if(getX() > x.getX() - 3 &&  getX() < x.getX() + 3 && getY() > x.getY() - 3 &&  getY() < x.getY() + 3){
    x.popLayers(damage);
    drawable = false;
    x.changeDraw(false);
    return true;
  }
  return false;
  }
    public void changeCoord(Bloons p){
    x += getDirection(p).x*speed;
    y += getDirection(p).y*speed;
  }
  public PVector getDirection(Bloons p){
     float x = p.getX();
     float y = p.getY();
     PVector direction = new PVector(x - getX(), y - getY());
     direction.normalize();
     return direction;
  }
}
