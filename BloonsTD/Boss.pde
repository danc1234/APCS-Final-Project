public class Boss extends SpecialBloons {
  // Fields
  private int initialhealth;
  private int health;
  private int stage;
  private PImage balloon;

  // Constructor
  public Boss (int level, float locationX, float locationY, boolean camo, boolean regenerate, Map maps, int healthy, int area, PImage[] bloondisplay, PImage[] blooncamo, PImage[] bloonregrow, PImage[] blooncamoregrow) {
    super(level, locationX, locationY, camo, regenerate, maps, bloondisplay, blooncamo,bloonregrow,blooncamoregrow);
    health = healthy;
    initialhealth = healthy;
    stage = area;
    super.setHealth(healthy);
  }
  
  public Boss (int level, float locationX, float locationY, boolean camo, boolean regenerate, Map maps, int healthy, int area, PImage[] bloondisplay, PImage[] blooncamo, PImage[] bloonregrow, PImage[] blooncamoregrow, int tilecount) {
    super(level, locationX, locationY, camo, regenerate, maps, bloondisplay, blooncamo,bloonregrow,blooncamoregrow, tilecount);
    health = healthy;
    initialhealth = healthy;
    stage = area;
    super.setHealth(healthy);
  }

  // Accessors
  public int getHealth() {
    return health;
  }
  public int getStage() {
    return stage;
  }
  public void popLayers(int pop) {
    health -= pop;
    if(health <= 0){
      changeLayers(1);
      if (this.getLayers() == 10) {
        health = 200;
        super.setHealth(200);
      }
      if (this.getLayers() == 11) {
        health = 700;
        super.setHealth(700);
      }
    }
    else if (health < initialhealth / 5) {
      stage = 5; 
    }
    else if (health < 2 * initialhealth / 5) {
      stage = 4; 
    }
    else if (health < 3 * initialhealth / 5) {
      stage = 3; 
    }
    else if (health < 4 * initialhealth / 5) {
      stage = 2; 
    }
    else if (health <= initialhealth ) {
      stage = 1; 
    }
  }

  public void drawBloon() {
    if (this.getLayers() < 9) {
      super.drawBloon(); 
    }
    else if (this.getLayers() == 9) {
      attributeDeclarer();
      if (stage == 5) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = bloonCamoRegrowDisplay[15];
          balloon.resize(50, 46);
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[15];
          balloon.resize(36, 46);
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[15];
          balloon.resize(50, 46);
        } else {
          balloon = bloonDisplay[15];
          balloon.resize(36, 46);
        }
        image(balloon, this.getX()-20, this.getY()-25);
      } else if (stage == 4) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = bloonCamoRegrowDisplay[14];
          balloon.resize(50, 46);
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[14];
          balloon.resize(36, 46);
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[14];
          balloon.resize(50, 46);
        } else {
          balloon = bloonDisplay[14];
          balloon.resize(36, 46);
        }
        image(balloon, this.getX()-20, this.getY()-25);
      } else if (stage == 3) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = bloonCamoRegrowDisplay[13];
          balloon.resize(50, 46);
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[13];
          balloon.resize(36, 46);
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[13];
          balloon.resize(50, 46);
        } else {
          balloon = bloonDisplay[13];
          balloon.resize(36, 46);
        }
        image(balloon, this.getX()-20, this.getY()-25);
      } else if (stage == 2) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = bloonCamoRegrowDisplay[12];
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[12];
          balloon.resize(36, 46);
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[12];
          balloon.resize(50, 46);
        } else {
          balloon = bloonDisplay[12];
          balloon.resize(36, 46);
        }
        image(balloon, this.getX()-20, this.getY()-25);
      } else if (stage == 1){
        if (this.getCamo() && this.getRegrow()) {
          balloon = bloonCamoRegrowDisplay[11];
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[11];
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[11];
        } else {
          balloon = bloonDisplay[11];
        }
        balloon.resize(70, 70);
        image(balloon, this.getX()-35, this.getY()-35);
      }
    } else {
      attributeDeclarer();
      PVector direction = this.getDirection();
      float[] move = direction.array();
      if (this.getLayers() == 10) {
        if (Math.round(move[0]) == 1 && Math.round(move[1]) == 0) {
          balloon = BloonDisplay[16];
        }
        if (Math.round(move[0]) == 0 && Math.round(move[1]) == -1) {
          balloon = BloonDisplay[17];
        }
        if (Math.round(move[0]) == -1 && Math.round(move[1]) == 0) {
          balloon = BloonDisplay[18];
        }
        if (Math.round(move[0]) == 0 && Math.round(move[1]) == 1) {
          balloon = BloonDisplay[19];
        }
        image(balloon, this.getX()-45, this.getY()-45);
      } else if (this.getLayers() == 11) {
        if (Math.round(move[0]) == 1 && Math.round(move[1]) == 0) {
          balloon = BloonDisplay[20];
        }
        if (Math.round(move[0]) == 0 && Math.round(move[1]) == -1) {
          balloon = BloonDisplay[21];
        }
        if (Math.round(move[0]) == -1 && Math.round(move[1]) == 0) {
          balloon = BloonDisplay[22];
        }
        if (Math.round(move[0]) == 0 && Math.round(move[1]) == 1) {
          balloon = BloonDisplay[23];
        }
        image(balloon, this.getX()-70, this.getY()-70);
      } else if (this.getLayers() == 12) {
        if (Math.round(move[0]) == 1 && Math.round(move[1]) == 0) {
          balloon = BloonDisplay[24];
        }
        if (Math.round(move[0]) == 0 && Math.round(move[1]) == -1) {
          balloon = BloonDisplay[25];
        }
        if (Math.round(move[0]) == -1 && Math.round(move[1]) == 0) {
          balloon = BloonDisplay[25];
        }
        if (Math.round(move[0]) == 0 && Math.round(move[1]) == 1) {
          balloon = BloonDisplay[26];
        }
        image(balloon, this.getX()-70, this.getY()-70);
      }
    }
  }
}
