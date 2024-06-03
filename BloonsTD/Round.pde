import java.util.Scanner;
import java.io.File;
import java.io.FileNotFoundException;
public class Round{
  
  int round;
  int balloon = -1;
  Map x = new Map("Map.png");
  Bloons[] round1 = new Bloons[53];
  private int balloonnumber = 0;
  
  public Round(){
  round = 1;
  }
  public void makeRounds(){
    if(round == 1){
      round1 = new Bloons[20];
      for(int y = 0; y < 20;y++){
        balloonnumber++;
        round1[y] = new Bloons(1, 4.6, 227.0, false, false, x);
      }
    }
    else if(round == 2){
      round1 = new Bloons[53];
      for(int y = 0; y < 35;y++){
        round1[y] = new Bloons(1, 4.6, 227.0, false, false, x);
      }
    }
    else if(round == 3){
      round1 = new Bloons[53];
      for(int y = 0; y < 30;y++){
        balloonnumber++;
        if(y < 25){
        round1[y] = new Bloons(1, 4.6, 227.0, false, false, x);
        }
        else{
          round1[y] = new Bloons(2, 4.6, 227.0, false, false, x);
        }
      }
    }
    else if(round == 4){
      round1 = new Bloons[53];
      for(int y = 0; y < 53;y++){
        balloonnumber++;
        if(y < 35){
        round1[y] = new Bloons(1, 4.6, 227.0, false, false, x);
        }
        else{
          round1[y] = new Bloons(2, 4.6, 227.0, false, false, x);
        }
      }
    }
    else if(round == 5){
      round1 = new Bloons[53];
      for(int y = 0; y < 20;y++){
        balloonnumber++;
        if(y < 5){
        round1[y] = new Bloons(1, 4.6, 227.0, false, false, x);
        }
        else{
          round1[y] = new Bloons(2, 4.6, 227.0, false, false, x);
        }
      }
    }
    
  }
  public int getWave(){
    return round;
  }
  public Bloons[] getRound(){
    return round1;
  }
  public Bloons getBloon(){
    balloon++;
    if(balloon < balloonnumber){ 
      return round1[balloon];
    }
    else{
      balloon = -1;
      return null;
    }
  }
  public void nextRound(){
      round++;
      balloonnumber = 0;
      makeRounds();
  }
}
