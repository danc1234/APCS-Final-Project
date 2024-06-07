public class Map {
  private PImage map;
  public int tileCount = 0;
  private ArrayList<Tile> tiles = new ArrayList<Tile>();
  public Map(String name) {
    if (name.equals("Map.png")) {
      tiles.add(new Tile(4, 227));
      tiles.add(new Tile(405, 227));
      tiles.add(new Tile(405, 101));
      tiles.add(new Tile(270, 101));
      tiles.add(new Tile(270, 417));
      tiles.add(new Tile(139, 417));
      tiles.add(new Tile(139, 314));
      tiles.add(new Tile(518, 314));
      tiles.add(new Tile(518, 179));
      tiles.add(new Tile(621, 179));
      tiles.add(new Tile(621, 385));
      tiles.add(new Tile(369, 385));
      tiles.add(new Tile(369, 524));
      tileCount = 13;
    }
  }
  public PImage getMap() {
    return map;
  }
  public ArrayList<Tile> getTiles() {
    return tiles;
  }
  
  
  
}
