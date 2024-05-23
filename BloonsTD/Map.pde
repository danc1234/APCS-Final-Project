public class Map{
  private PImage map;
  public Map(String name){
    map = loadImage(name);
  }
  public PImage getMap(){
  return map;
  }
}
