public class Dart {
  private boolean drawable = true;
  // Fields
  int size;
  double speed;
  float x;
  float y;
  boolean test = false;
  float angle = 0;
  int noChange = 0;
  boolean hasBloon = false;

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
  public float getAngle() {
    return angle;
  }

  public void drawDart() {
    if (test) {
      text("a", 60, 100);
    }
    if (drawable) {
      circle(x, y, 5);
    }
  }
  public boolean nearBloon(Bloons p) {
    if (x > p.getX() - 10 &&  x < p.getX() + 10 && y > p.getY() - 10 &&  y < p.getY() + 10) {
      hasBloon = false;
      return true;
    }
    return false;
  }
  public void changeCoord(Bloons p) {
    x += getDirection(p).x * speed;
    y += getDirection(p).y * speed;
  }
  public PVector getDirection(Bloons p) {
    hasBloon = true;
    float m = p.getX();
    float l = p.getY();
    PVector direction = new PVector(m-x, l-y);
    direction.normalize();
    if (noChange < 1) {
      angle = direction.heading();
      noChange++;
    }
    return direction;
  }
}
