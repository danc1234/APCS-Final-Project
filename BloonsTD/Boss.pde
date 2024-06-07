public class Boss extends SpecialBloons {
  // Fields
  private int initialhealth;
  private int health;
  private int stage;
  private PImage balloon;

  // Constructor
  public Boss (int level, float locationX, float locationY, int healthy, int area, Map maps, boolean camo, boolean regenerate, PImage[] bloondisplay, PImage[] blooncamo, PImage[] bloonregrow, PImage[] blooncamoregrow) {
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
          balloon = loadImage("CamoRegrowth/CeramicRegrowCamoDamage4.png");
        } else if (this.getCamo()) {
          balloon = loadImage("CamoBloons/CeramicCamoDamage4.png");
        } else if (this.getRegrow()) {
          balloon = loadImage("RegrowthBloons/CeramicRegrowDamage4.png");
        } else {
          balloon = loadImage("BalloonImages/CeramicDamage4.png");
        }
      } else if (stage == 4) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = loadImage("CamoRegrowth/CeramicRegrowCamoDamage3.png");
        } else if (this.getCamo()) {
          balloon = loadImage("CamoBloons/CeramicCamoDamage3.png");
        } else if (this.getRegrow()) {
          balloon = loadImage("RegrowthBloons/CeramicRegrowDamage3.png");
        } else {
          balloon = loadImage("BalloonImages/CeramicDamage3.png");
        }
      } else if (stage == 3) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = loadImage("CamoRegrowth/CeramicRegrowCamoDamage2.png");
        } else if (this.getCamo()) {
          balloon = loadImage("CamoBloons/CeramicCamoDamage2.png");
        } else if (this.getRegrow()) {
          balloon = loadImage("RegrowthBloons/CeramicRegrowDamage2.png");
        } else {
          balloon = loadImage("BalloonImages/CeramicDamage2.png");
        }
      } else if (stage == 2) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = loadImage("CamoRegrowth/CeramicRegrowCamoDamage1.png");
        } else if (this.getCamo()) {
          balloon = loadImage("CamoBloons/CeramicCamoDamage1.png");
        } else if (this.getRegrow()) {
          balloon = loadImage("RegrowthBloons/CeramicRegrowDamage1.png");
        } else {
          balloon = loadImage("BalloonImages/CeramicDamage1.png");
        }
      } else if (stage == 1){
        if (this.getCamo() && this.getRegrow()) {
          balloon = loadImage("CamoRegrowth/CeramicBloon.png");
        } else if (this.getCamo()) {
          balloon = loadImage("CamoBloons/CeramicBloon.png");
        } else if (this.getRegrow()) {
          balloon = loadImage("RegrowthBloons/CeramicBloon.png");
        } else {
          balloon = loadImage("BalloonImages/CeramicBloon.png");
        }
      }
      balloon.resize(70, 70);
      image(balloon, this.getX()-35, this.getY()-35);
    } else {
      PVector direction = this.getDirection();
      float[] move = direction.array();
      if (getLayers() == 10) {
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
      } else if (getLayers() == 11) {
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
