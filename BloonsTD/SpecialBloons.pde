public class SpecialBloons extends Bloons{
  private boolean imunFreeze;
  private boolean imunExplosion;
  private boolean imunSharp;
  private boolean imunMagic;
  private PImage balloon;
  
  public SpecialBloons(int level, float locationX, float locationY, boolean camoflauge, boolean regenerate, Map maps, boolean freeze, boolean explosion, boolean sharp, boolean magic){
    super(level, locationX, locationY, camoflauge, regenerate, maps);
    imunFreeze = freeze;
    imunExplosion = explosion;
    imunSharp = sharp;
    imunMagic = magic;
    speedDeclarer();
    damageDeclarer();
  }
  public SpecialBloons(int level, float locationX, float locationY, boolean camoflauge, boolean regenerate, Map maps){
    super(level, locationX, locationY, camoflauge, regenerate, maps); 
  }
  
  public void speedDeclarer() {
    if ((this.getLayers() == 7) && (imunSharp)) {
      this.changeSpeed(1);
    } else if ((this.getLayers() == 7) && (imunExplosion) && (imunFreeze)) {
      this.changeSpeed(1.8);
    } else if ((this.getLayers() == 6) && (imunFreeze)) {
      this.changeSpeed(2);
    } else if ((this.getLayers() == 6) && (imunMagic)) {
      this.changeSpeed(3);
    } else if ((this.getLayers() == 6) && (imunExplosion)) {
      this.changeSpeed(1.8);
    } else {
      super.speedDeclarer(); 
    }
  }
  
  
  
  
  public void drawBloon() {
    circle(this.getX(), this.getY(), 10);
    if (this.getLayers() < 6) {
      super.drawBloon(); 
    } else {
      if (this.getLayers() == 8) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = loadImage("CamoRegrowth/RainbowBloon.png"); 
        } else if (this.getCamo()) {
          balloon = loadImage("CamoBloons/RainbowBloon.png"); 
        } else if (this.getRegrow()) {
          balloon = loadImage("RegrowthBloons/RainbowBloon.png"); 
        } else {
          balloon = loadImage("BalloonImages/RainbowBloon.png");
        }
      }
      if ((this.getLayers() == 7) && (imunExplosion) && (imunFreeze)) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = loadImage("CamoRegrowth/ZebraBloon.png"); 
        } else if (this.getCamo()) {
          balloon = loadImage("CamoBloons/ZebraBloon.png"); 
        } else if (this.getRegrow()) {
          balloon = loadImage("RegrowthBloons/ZebraBloon.png"); 
        } else {
          balloon = loadImage("BalloonImages/ZebraBloon.png");
        }
      }
      if ((this.getLayers() == 7) && (imunSharp)) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = loadImage("CamoRegrowth/LeadBloon.png"); 
        } else if (this.getCamo()) {
          balloon = loadImage("CamoBloons/LeadBloon.png"); 
        } else if (this.getRegrow()) {
          balloon = loadImage("RegrowthBloons/LeadBloon.png"); 
        } else {
          balloon = loadImage("BalloonImages/LeadBloon.png");
        }
      }
      if ((this.getLayers() == 6) && (imunFreeze)) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = loadImage("CamoRegrowth/WhiteBloon.png"); 
        } else if (this.getCamo()) {
          balloon = loadImage("CamoBloons/WhiteBloon.png"); 
        } else if (this.getRegrow()) {
          balloon = loadImage("RegrowthBloons/WhiteBloon.png"); 
        } else {
          balloon = loadImage("BalloonImages/WhiteBloon.png");
        }
      }
      if ((this.getLayers() == 6) && (imunExplosion)) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = loadImage("CamoRegrowth/BlackBloon.png"); 
        } else if (this.getCamo()) {
          balloon = loadImage("CamoBloons/BlackBloon.png"); 
        } else if (this.getRegrow()) {
          balloon = loadImage("RegrowthBloons/BlackBloon.png"); 
        } else {
          balloon = loadImage("BalloonImages/BlackBloon.png");
        }
      }
      if ((this.getLayers() == 6) && (imunMagic)) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = loadImage("CamoRegrowth/PurpleBloon.png"); 
        } else if (this.getCamo()) {
          balloon = loadImage("CamoBloons/PurpleBloon.png"); 
        } else if (this.getRegrow()) {
          balloon = loadImage("RegrowthBloons/PurpleBloon.png"); 
        } else {
          balloon = loadImage("BalloonImages/PurpleBloon.png");
        }
      }    
      balloon.resize(70, 70);
      image(balloon, this.getX()-35, this.getY()-35);
    }
  }
  

}
