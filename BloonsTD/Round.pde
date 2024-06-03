public class Round {
  int round;
  int balloon = -1;
  Map x = new Map("Map.png");
  Bloons[][] rounds = new Bloons[][]{{
      new Bloons(1, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(1, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(1, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(1, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(1, 4.6, 227.0, false, false, new Map("Map.png"))},
    {    new Bloons(1, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(1, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(2, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(1, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(1, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(2, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(1, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(1, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(2, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(2, 4.6, 227.0, false, false, new Map("Map.png"))}, {
      new Bloons(3, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(3, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(3, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(3, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(3, 4.6, 227.0, false, false, new Map("Map.png"))},
    {
      new Bloons(4, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(4, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(4, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(4, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(4, 4.6, 227.0, false, false, new Map("Map.png"))},
    {
      new Bloons(5, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(5, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(5, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(4, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(4, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(4, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(4, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(5, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(5, 4.6, 227.0, false, false, new Map("Map.png")),
      new Bloons(5, 4.6, 227.0, false, false, new Map("Map.png"))}};

  public Round() {
    round = 0;
  }
  public void increaseRound() {
    round++;
  }
  public void restartBalloon() {
    balloon = -1; 
  } 
  
  public Bloons getBloon(int round) {
    balloon++;
    if (round >= rounds.length) {
      return null;
    } else {
      if ((balloon < rounds[round].length)) {
        return rounds[round][balloon];
      }
      return null;
    }
  }
}
