public class SpecialBloons extends Bloons{
  private boolean imunFreeze;
  private boolean imunExplosion;
  private boolean imunSharp;
  private boolean imunMagic;
  private PImage balloon;
  
  public SpecialBloons(int level, double velocity, float locationX, float locationY, boolean camoflauge, boolean regenerate, boolean freeze, boolean explosion, boolean sharp, boolean magic, Map map){
    super(level, velocity, locationX, locationY, camoflauge, regenerate, map);
    imunFreeze = freeze;
    imunExplosion = explosion;
    imunSharp = sharp;
    imunMagic = magic;
  }
  
  public void drawBloon() {
    System.out.println(this.getLayers());
    System.out.println(imunFreeze);
    circle(this.getX(), this.getY(), 10);
    if ((this.getLayers() == 7) && (imunExplosion) && (imunFreeze)) {
      balloon = loadImage("BalloonImages/ZebraBloon.png"); 
    }
    if ((this.getLayers() == 7) && (imunSharp)) {
      balloon = loadImage("BalloonImages/LeadBloon.png"); 
    }
    if ((this.getLayers() == 6) && (imunFreeze)) {
      balloon = loadImage("BalloonImages/WhiteBloon.png"); 
    }
    if ((this.getLayers() == 6) && (imunExplosion)) {
      balloon = loadImage("BalloonImages/BlackBloon.png"); 
    }
    if ((this.getLayers() == 6) && (imunMagic)) {
      balloon = loadImage("BalloonImages/PurpleBloon.png"); 
    }    
    balloon.resize(70, 70);
    image(balloon, this.getX()-35, this.getY()-35);
  }
  

}
