public class Bloons {
  // Fields
  private boolean drawable = true;
  private int tilecount;
  private Map map;
  private Tile tile;
  private int layers;
  private int damage;
  private double speed;
  private float x;
  private float y;
  private boolean camo;
  private boolean regrow;
  private boolean iced;
  private boolean glued;
  private PImage balloon;

  PImage[] bloonDisplay;
  PImage[] bloonCamoDisplay;
  PImage[] bloonRegrowDisplay;
  PImage[] bloonCamoRegrowDisplay;

  // Constructor
  public Bloons (int level, float locationX, float locationY, boolean camoflauge, boolean regenerate, Map maps, PImage[] bloondisplay, PImage[] blooncamo, PImage[] bloonregrow, PImage[] blooncamoregrow) {
    layers = level;
    x = locationX;
    y = locationY;
    camo = camoflauge;
    regrow = regenerate;
    iced = false;
    glued = false;
    map = maps;
    tilecount = 0;
    attributeDeclarer();
    bloonDisplay = bloondisplay;
    bloonCamoDisplay = blooncamo;
    bloonRegrowDisplay = bloonregrow;
    bloonCamoRegrowDisplay = blooncamoregrow;
  }
  public boolean inRange(float xc, float yc, int range) {
    return (dist(xc, yc, x, y) < range);
  }

  // Accessors
  public boolean getCamo() {
    return camo;
  }
  public boolean getRegrow() {
    return regrow;
  }
  public float getX() {
    return x;
  }
  public float getY() {
    return y;
  }
  public int getDamage() {
    return damage;
  }
  public int getLayers() {
    return layers;
  }
  public PVector getDirection() {
    onTile();
    float x = tile.getX();
    float y = tile.getY();
    PVector direction = new PVector(x - getX(), y - getY());
    direction.normalize();
    return direction;
  }
  public boolean getDraw() {
    return drawable;
  }

  // Methods
  public void popLayers(int pop) {
    layers -= pop;
  }
  public void changeSpeed(double speedFactor) {
    speed = speedFactor;
  }
  public void setDamage(int hurt) {
    damage = hurt;
  }
  public void addLayers() {
    layers++;
  }
  public void changeCoord() {
    x += getDirection().x*speed;
    y += getDirection().y*speed;
  }
  public void onTile() {
    if (tilecount == 0) {
      tile = map.getTiles().removeFirst();
      tilecount++;
    }
    if (x > tile.getX() - 2 && x < tile.getX() + 2 && y > tile.getY() - 2 && y < tile.getY() + 2) {
      if (map.tileCount > tilecount) {
        tile = map.getTiles().removeFirst();
        tilecount++;
      } else {
        drawable = false;
      }
    }
  }

  public void changeDraw(boolean x) {
    drawable = x;
  }

  public void drawBloon() {
    if (layers <= 0) {
      drawable = false;
    }
    if (drawable) {
      attributeDeclarer();
      if (layers == 1) {
        if (this.getCamo() && regrow) {
          balloon = bloonCamoRegrowDisplay[0];
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[0];
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[0];
        } else {
          balloon = bloonDisplay[0];
        }
      }
      if (layers == 2) {
        if (this.getCamo() && regrow) {
          balloon = bloonCamoRegrowDisplay[1];
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[1];
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[1];
        } else {
          balloon = bloonDisplay[1];
        }
      }
      if (layers == 3) {
        if (this.getCamo() && regrow) {
          balloon = bloonCamoRegrowDisplay[2];
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[2];
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[2];
        } else {
          balloon = bloonDisplay[2];
        }
      }
      if (layers == 4) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = bloonCamoRegrowDisplay[3];
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[3];
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[3];
        } else {
          balloon = bloonDisplay[3];
        }
      }
      if (layers == 5) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = bloonCamoRegrowDisplay[4];
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[4];
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[4];
        } else {
          balloon = bloonDisplay[4];
        }
      }
      balloon.resize(70, 70);
      image(balloon, x-35, y-35);
    }
  }

  public void attributeDeclarer() {
    if (layers == 1) {
      damage = 1;
      speed = 1;
    } else if (layers == 2) {
      damage = 2;
      speed = 1.4;
    } else if (layers == 3) {
      damage = 3;
      speed = 1.8;
    } else if (layers == 4) {
      damage = 4;
      speed = 3.2;
    } else if (layers == 5) {
      damage = 5;
      speed = 3.5;
    } else if (layers == 8) {
      damage = 47;
      speed = 2.2;
    } else if (layers == 9) {
      damage = 104;
      speed = 2.5;
    } else if (layers == 10) {
      damage = 616;
      speed = 1;
    } else if (layers == 11) {
      damage = 3164;
      speed = 0.25;
    } else if (layers == 12) {
      damage = 16656;
      speed = 0.18;
    }
  }
}
