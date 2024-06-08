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
      changeLayers(0);
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
    attributeDeclarer();
    if (this.getLayers() == 9) {
      if (stage == 5) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = bloonCamoRegrowDisplay[15];
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[15];
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[15];
        } else {
          balloon = bloonDisplay[15];
          balloon.resize(70, 70);
        }
      } else if (stage == 4) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = bloonCamoRegrowDisplay[14];
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[14];
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[14];
        } else {
          balloon = bloonDisplay[14];
          balloon.resize(70, 70);
        }
      } else if (stage == 3) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = bloonCamoRegrowDisplay[13];
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[13];
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[13];
        } else {
          balloon = bloonDisplay[13];
          balloon.resize(70, 70);
        }
      } else if (stage == 2) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = bloonCamoRegrowDisplay[12];
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[12];
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[12];

        } else {
          balloon = bloonDisplay[12];
          balloon.resize(36, 46);
        }
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
      }
      image(balloon, this.getX()-35, this.getY()-35);
    } else {
      PVector direction = this.getDirection();
      float[] move = direction.array();
      if (health <= 200) {
        if (Math.round(move[0]) == 1 && Math.round(move[1]) == 0) {
          balloon = loadImage("BalloonIMages/MoabRight.png");
          balloon.resize(132, 86);
        }
        if (Math.round(move[0]) == 0 && Math.round(move[1]) == -1) {
          balloon = loadImage("BalloonIMages/MoabUp.png");
          balloon.resize(86, 132);
        }
        if (Math.round(move[0]) == -1 && Math.round(move[1]) == 0) {
          balloon = loadImage("BalloonIMages/MoabLeft.png");
          balloon.resize(132, 86);
        }
        if (Math.round(move[0]) == 0 && Math.round(move[1]) == 1) {
          balloon = loadImage("BalloonIMages/MoabDown.png");
          balloon.resize(86, 132);
        }
        image(balloon, this.getX()-45, this.getY()-45);
      } else if (health <= 900) {
        if (Math.round(move[0]) == 1 && Math.round(move[1]) == 0) {
          balloon = loadImage("BalloonIMages/BFBRight.png");
          balloon.resize(202, 142);
        }
        if (Math.round(move[0]) == 0 && Math.round(move[1]) == -1) {
          balloon = loadImage("BalloonIMages/BFBUp.png");
          balloon.resize(142, 202);
        }
        if (Math.round(move[0]) == -1 && Math.round(move[1]) == 0) {
          balloon = loadImage("BalloonIMages/BFBLeft.png");
          balloon.resize(202, 142);
        }
        if (Math.round(move[0]) == 0 && Math.round(move[1]) == 1) {
          balloon = loadImage("BalloonIMages/BFBDown.png");
          balloon.resize(142, 202);
        }
        image(balloon, this.getX()-70, this.getY()-70);
      } else {
        if (Math.round(move[0]) == 1 && Math.round(move[1]) == 0) {
          balloon = loadImage("BalloonIMages/ZOMGRight.png");
          balloon.resize(222, 141);
        }
        if (Math.round(move[0]) == 0 && Math.round(move[1]) == -1) {
          balloon = loadImage("BalloonIMages/ZOMGUp.png");
          balloon.resize(141, 222);
        }
        if (Math.round(move[0]) == -1 && Math.round(move[1]) == 0) {
          balloon = loadImage("BalloonIMages/ZOMGLeft.png");
          balloon.resize(222, 141);
        }
        if (Math.round(move[0]) == 0 && Math.round(move[1]) == 1) {
          balloon = loadImage("BalloonIMages/ZOMGDown.png");
          balloon.resize(141, 222);
        }
        image(balloon, this.getX()-70, this.getY()-70);
      }
    }
  }
}
