import java.util.LinkedList;
Map x;
private int lives=100;
private int cash=650;
private int waves=1;
private int barrier;

//hi;
<<<<<<< HEAD
private ArrayList<ArrayList<Bloons>> balloon = new ArrayList<ArrayList<Bloons>>();
Bloons tester1;
Bloons tester2;

=======
//private ArrayList<ArrayList<Bloons>> balloon = new ArrayList<ArrayList<Bloons>>();
private ArrayList<Bloons> balloon = new ArrayList<Bloons>();
>>>>>>> d03f237e6926237eaab85590deb20c4f05791f2f
void setup() {
  size(953, 530);
  rect(823, 0, 130, 120);
  x = new Map("Map.png");
// Bloons tester1 = new Bloons(1, 4.5, 3.0, 227.0, false, false, x);
 //Bloons tester2 = new Bloons(1, 4.5, 3.0, 227.0, false, false, x);
  image(x.getMap(), 0, 0);
  fill(0);
  textSize(30);
  text("Lives: "+lives, 825, 30);
  text("Cash: "+cash, 825, 60);
  textSize(20);
  text("Wave "+waves+" out of \n85", 825, 90);
<<<<<<< HEAD
  tester1 = new Bloons(1,2, 4, 227,true, true, x);
  tester2 = new Bloons(1,2, 4, 227,false, false, new Map("Map.png"));
=======
  addWaves();
  for (int i = 0; i < balloon.size(); i++) {
    System.out.println(balloon.toString());
  }
>>>>>>> d03f237e6926237eaab85590deb20c4f05791f2f
}
void draw() {
  //setup();
  //text("" + mouseX + ", " + mouseY, 10, 10);
<<<<<<< HEAD

  image(x.getMap(), 0, 0);/*
  for (int i = 0; i < balloon.size(); i++) {
    for (int j = 0; j < balloon.get(i).size(); j++) {
        println("arraysize: "+balloon.get(i).size());
        println("i: "+i);
        println("j: "+j);
        int timer = millis();
        int end = timer + 100;
        while (millis() < end) {
          
        }
        if (balloon.get(i).get(j).getDraw()) {
          balloon.get(i).get(j).drawBloon();
        } 
        balloon.get(i).get(j).changeCoord();
    }
  }*/
  if(tester1.getDraw()){
  tester1.drawBloon();
=======
  image(x.getMap(), 0, 0);
  for (Bloons b : balloon) {
    if (b.getDraw()) {
      b.drawBloon();
    }
    b.changeCoord();
>>>>>>> d03f237e6926237eaab85590deb20c4f05791f2f
  }
  tester1.changeCoord();
    if(tester2.getDraw()){
  tester2.drawBloon();
  }
  tester2.changeCoord();
  
  fill(255);
  rect(823, 0, 130, 120);
  fill(0);
  textSize(30);
  text("Lives: "+lives, 825, 30);
  text("Cash: "+cash, 825, 60);
  textSize(20);
  text("Wave "+waves+" out of \n85", 825, 90);
  if (lives == 0) {
    int time = millis();
    if (time > barrier + 700) {
      fill(#FF0000);
      rect(205.75, 225, 411.5, 100); 
      fill(0);
      textSize(40);
      text("HOW DARE YOU LET THE \n           BLOONS WIN!!!", 207, 265);
    }
  }  
}

public void setLives(int damage) {
  if (lives - damage <= 0) {
    lives = 0; 
    barrier = millis();
  } else {
    lives -= damage; 
  }
}
public void advanceWaves() {
  waves++;
}
public void modifyBloonList() {
  balloon.remove(0); 
}
<<<<<<< HEAD
=======

public void addWaves() {
  for (int i = 0; i < 19; i++) {
     Map y = new Map("Map.png");
     balloon.add(new Bloons(1, 1, 4.5, 227.0, false, false, y));
  }  
}
>>>>>>> d03f237e6926237eaab85590deb20c4f05791f2f
