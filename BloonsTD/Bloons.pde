public class Bloons{
  private int layers;
  private double speed;
  private boolean camo;
  private boolean regrowth;
  private float x;
  private float y;
  private boolean iced;
  private boolean glued;
  public float getX(){
    return x;
  }
  public float getY(){
  return y;
  }
  public void popLayers(int pop){
    layers -= pop;
  }
  public int getLayers(){
    return layers;
  }
  public void changeSpeed(double speedFactor){
    speed += speedFactor;
  }
  public void addLayers(){
    layers++;
  }
}
