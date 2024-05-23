public class SpecialBloons extends Bloons{
  // Fields
  boolean imunFreeze;
  boolean imunExplosion;
  boolean imunSharp;
  boolean ceramic;

  // Constructor
  public SpecialBloons (int level, double velocity, float locationX, float locationY, boolean camoflauge, boolean regenerate){ 
    super(level, velocity, locationX, locationY, camoflauge, regenerate);
  }


}
