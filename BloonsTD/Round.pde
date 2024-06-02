public class Round{
  int round;
  int balloon = -1;
  Map x = new Map("Map.png");
  Bloons[] round1 = new Bloons[]{
  new Bloons(5, 4.6, 227.0, false, false, new Map("Map.png")),
new Bloons(5, 4.6, 227.0, false, false, new Map("Map.png")),
new Bloons(5, 4.6, 227.0, false, false, new Map("Map.png")),
new Bloons(5, 4.6, 227.0, false, false, new Map("Map.png")),
new Bloons(5, 4.6, 227.0, false, false, new Map("Map.png")),
new Bloons(5, 4.6, 227.0, false, false, new Map("Map.png")),
new Bloons(5, 4.6, 227.0, false, false, new Map("Map.png"))};
  public Round(){
    round = 1;
  }
  public Bloons[] getRound(){
    return round1;
  }
  public Bloons getBloon(){
    balloon++; 
    if(balloon < round1.length){ 
      return round1[balloon];
    }
    return null;
  }
}
