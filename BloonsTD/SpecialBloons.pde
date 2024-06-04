public class SpecialBloons extends Bloons {
  private boolean imunFreeze;
  private boolean imunExplosion;
  private boolean imunSharp;
  private boolean imunMagic;
  private PImage balloon;

  public SpecialBloons(int level, float locationX, float locationY, boolean camoflauge, boolean regenerate, Map maps, boolean freeze, boolean explosion, boolean sharp, boolean magic, PImage[] bloondisplay, PImage[] blooncamo, PImage[] bloonregrow, PImage[] blooncamoregrow) {
    super(level, locationX, locationY, camoflauge, regenerate, maps, bloondisplay, blooncamo, bloonregrow, blooncamoregrow);
    imunFreeze = freeze;
    imunExplosion = explosion;
    imunSharp = sharp;
    imunMagic = magic;
    speedDeclarer();
    damageDeclarer();
  }
  public SpecialBloons(int level, float locationX, float locationY, boolean camoflauge, boolean regenerate, Map maps, PImage[] bloondisplay, PImage[] blooncamo, PImage[] bloonregrow, PImage[] blooncamoregrow) {
    super(level, locationX, locationY, camoflauge, regenerate, maps, bloondisplay, blooncamo, bloonregrow, blooncamoregrow);
  }

  public void speedDeclarer() {
    if ((this.getLayers() == 7) && (imunSharp)) {
      this.changeSpeed(0.51);
    } else if ((this.getLayers() == 7) && (imunExplosion) && (imunFreeze)) {
      this.changeSpeed(0.9);
    } else if ((this.getLayers() == 6) && (imunFreeze)) {
      this.changeSpeed(1);
    } else if ((this.getLayers() == 6) && (imunMagic)) {
      this.changeSpeed(1.5);
    } else if ((this.getLayers() == 6) && (imunExplosion)) {
      this.changeSpeed(0.9);
    } else {
      super.attributeDeclarer();
    }
  }

  public void damageDeclarer() {
    if (this.getLayers() == 7) {
      this.setDamage(23);
    } else if (this.getLayers() == 6) {
      this.setDamage(11);
    } else {
      super.attributeDeclarer();
    }
  }




  public void drawBloon() {
    if (this.getLayers() < 6) {
      super.drawBloon();
    } else {
      if (this.getLayers() == 8) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = bloonCamoRegrowDisplay[8];
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[8];
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[8];
        } else {
          balloon = bloonDisplay[8];
        }
      }
      if ((this.getLayers() == 7) && (imunExplosion) && (imunFreeze)) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = bloonCamoRegrowDisplay[10];
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[10];
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[10];
        } else {
          balloon = bloonDisplay[10];
        }
      }
      if ((this.getLayers() == 7) && (imunSharp)) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = bloonCamoRegrowDisplay[9];
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[9];
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[9];
        } else {
          balloon = bloonDisplay[9];
        }
      }
      if ((this.getLayers() == 6) && (imunFreeze)) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = bloonCamoRegrowDisplay[7];
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[7];
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[7];
        } else {
          balloon = bloonDisplay[7];
        }
      }
      if ((this.getLayers() == 6) && (imunExplosion)) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = bloonCamoRegrowDisplay[6];
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[6];
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[6];
        } else {
          balloon = bloonDisplay[6];
        }
      }
      if ((this.getLayers() == 6) && (imunMagic)) {
        if (this.getCamo() && this.getRegrow()) {
          balloon = bloonCamoRegrowDisplay[8];
        } else if (this.getCamo()) {
          balloon = bloonCamoDisplay[8];
        } else if (this.getRegrow()) {
          balloon = bloonRegrowDisplay[8];
        } else {
          balloon = bloonDisplay[8];
        }
      }
      balloon.resize(70, 70);
      image(balloon, this.getX()-35, this.getY()-35);
    }
  }
}
