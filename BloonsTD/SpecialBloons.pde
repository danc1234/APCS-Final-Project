public class SpecialBloons extends Bloons{

  private boolean imunFreeze;
  private boolean imunExplosion;
  private boolean imunSharp;
  public SpecialBloons(int level, double velocity, float locationX, float locationY, boolean camoflauge, boolean regenerate, boolean freeze, boolean explosion, boolean sharp, Map map){
    super(level, velocity, locationX, locationY, camoflauge, regenerate, map);
    imunFreeze = freeze;
    imunExplosion = explosion;
    imunSharp = sharp;
  }

}
