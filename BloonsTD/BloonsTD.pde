import java.util.LinkedList;
Map x;
private int lives=100;
private int cash=650;
private int waves=1;
private int barrier;

//hi;
private ArrayList<ArrayList<Bloons>> balloon = new ArrayList<ArrayList<Bloons>>();
void setup() {
  size(953, 530);
  rect(823, 0, 130, 120);
  x = new Map("Map.png");
  image(x.getMap(), 0, 0);
  fill(0);
  textSize(30);
  text("Lives: "+lives, 825, 30);
  text("Cash: "+cash, 825, 60);
  textSize(20);
  text("Wave "+waves+" out of \n85", 825, 90);
  addWaves(balloon);
  for (int i = 0; i < balloon.size(); i++) {
    System.out.println(balloon.toString());
  }
}
void draw() {
  //setup();
  //text("" + mouseX + ", " + mouseY, 10, 10);
  image(x.getMap(), 0, 0);
  for (int i = 0; i < balloon.size(); i++) {
    for (int j = 0; j < balloon.get(i).size(); j++) {
      if (balloon.get(i).get(j).getDraw()) {
        balloon.get(i).get(j).drawBloon();
      }
      balloon.get(i).get(j).changeCoord();
    }
  }
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







public void addWaves(ArrayList<ArrayList<Bloons>> balloon) {
    ArrayList<Bloons> a = new ArrayList<Bloons>();
      for (int i = 0; i < 19; i++) {
        Map y = new Map("Map.png");;
        a.add(new Bloons(1, 1, 3.0, 227.0, false, false, y));
      }/*
    ArrayList<Bloons> b = new ArrayList<Bloons>();
      for (int i = 0; i < 35; i++) {
        b.add(new Bloons(1, 1, 3.0, 227.0, false, false, x));
      }
    ArrayList<Bloons> c = new ArrayList<Bloons>();
      for (int i = 0; i < 5; i++) {
        c.add(new Bloons(2, 1.9, 3.0, 227.0, false, false, x));
      }
      for (int i = 0; i < 25; i++) {
        c.add(new Bloons(1, 1, 3.0, 227.0, false, false, x));
      }
    ArrayList<Bloons> d = new ArrayList<Bloons>();
      for (int i = 0; i < 18; i++) {
        d.add(new Bloons(2, 1.9, 3.0, 227.0, false, false, x));
      }
      for (int i = 0; i < 35; i++) {
        d.add(new Bloons(1, 1, 3.0, 227.0, false, false, x));
      }
    ArrayList<Bloons> e = new ArrayList<Bloons>();
      for (int i = 0; i < 5; i++) {
        e.add(new Bloons(1, 1.0, 3.0, 227.0, false, false, x));
      }
      for (int i = 0; i < 27; i++) {
        e.add(new Bloons(2, 1.9, 3.0, 227.0, false, false, x));
      }    
    ArrayList<Bloons> f = new ArrayList<Bloons>();
      for (int i = 0; i < 15; i++) {
        f.add(new Bloons(1, 1.0, 3.0, 227.0, false, false, x));
      }
      for (int i = 0; i < 15; i++) {
        f.add(new Bloons(2, 1.9, 3.0, 227.0, false, false, x));
      }    
      for (int i = 0; i < 4; i++) {
        f.add(new Bloons(3, 2.8, 3.0, 227.0, false, false, x)); 
      }
    ArrayList<Bloons> g = new ArrayList<Bloons>();
      for (int i = 0; i < 20; i++) {
        g.add(new Bloons(1, 1.0, 3.0, 227.0, false, false, x));
      }
      for (int i = 0; i < 20; i++) {
        g.add(new Bloons(2, 1.9, 3.0, 227.0, false, false, x));
      }    
      for (int i = 0; i < 5; i++) {
        g.add(new Bloons(3, 2.8, 3.0, 227.0, false, false, x)); 
      }      
    ArrayList<Bloons> h = new ArrayList<Bloons>();
      for (int i = 0; i < 10; i++) {
        h.add(new Bloons(1, 1.0, 3.0, 227.0, false, false, x));
      }
      for (int i = 0; i < 20; i++) {
        h.add(new Bloons(2, 1.9, 3.0, 227.0, false, false, x));
      }    
      for (int i = 0; i < 14; i++) {
        h.add(new Bloons(3, 2.8, 3.0, 227.0, false, false, x)); 
      }     
    ArrayList<Bloons> I = new ArrayList<Bloons>();
      for (int i = 0; i < 30; i++) {
        I.add(new Bloons(3, 2.8, 3.0, 227.0, false, false, x)); 
      }       
    ArrayList<Bloons> j = new ArrayList<Bloons>();
      for (int i = 0; i < 102; i++) {
        j.add(new Bloons(2, 1.9, 3.0, 227.0, false, false, x));
      } 
    ArrayList<Bloons> k = new ArrayList<Bloons>();
      for (int i = 0; i < 10; i++) {
        k.add(new Bloons(1, 1.0, 3.0, 227.0, false, false, x));
      }
      for (int i = 0; i < 20; i++) {
        k.add(new Bloons(2, 1.9, 3.0, 227.0, false, false, x));
      }    
      for (int i = 0; i < 14; i++) {
        k.add(new Bloons(3, 2.8, 3.0, 227.0, false, false, x)); 
      }  */
    balloon.add(a);/*
    balloon.add(b);
    balloon.add(c);
    balloon.add(d);
    balloon.add(e);
    balloon.add(f);
    balloon.add(g);
    balloon.add(h);
    balloon.add(I);
    balloon.add(j);
    balloon.add(k);*/
      
      /*
    ArrayList<Bloons> l = new ArrayList<Bloons>();
    ArrayList<Bloons> m = new ArrayList<Bloons>();
    ArrayList<Bloons> n = new ArrayList<Bloons>();
    ArrayList<Bloons> o = new ArrayList<Bloons>();
    ArrayList<Bloons> p = new ArrayList<Bloons>();
    ArrayList<Bloons> q = new ArrayList<Bloons>();
    ArrayList<Bloons> r = new ArrayList<Bloons>();
    ArrayList<Bloons> s = new ArrayList<Bloons>();
    ArrayList<Bloons> t = new ArrayList<Bloons>();
    ArrayList<Bloons> u = new ArrayList<Bloons>();
    ArrayList<Bloons> v = new ArrayList<Bloons>();
    ArrayList<Bloons> x = new ArrayList<Bloons>();
    ArrayList<Bloons> y = new ArrayList<Bloons>();
    ArrayList<Bloons> z = new ArrayList<Bloons>();
    ArrayList<Bloons> aa = new ArrayList<Bloons>();
    ArrayList<Bloons> ab = new ArrayList<Bloons>();
    ArrayList<Bloons> ac = new ArrayList<Bloons>();
    ArrayList<Bloons> ad = new ArrayList<Bloons>();
    ArrayList<Bloons> ae = new ArrayList<Bloons>();
    ArrayList<Bloons> af = new ArrayList<Bloons>();
    ArrayList<Bloons> ag = new ArrayList<Bloons>(); */
  }
