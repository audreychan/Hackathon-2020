class Button{
  
  PFont chancery;
  
  public Button(int x, int y, String text){
    
    chancery = loadFont("Apple-Chancery-25.vlw", 35);
    
    noStroke();
    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    textSize(35);
    textFont(chancery);
    
    fill(124, 200);
    rect(x+5, y+5, 250, 100);
    
    fill(#dd9a5a);
    rect(x, y, 250, 100);
    
    fill(0);
    text(text, x, y);
    
  }
  
  public boolean pressed(){
    return true;
  }
  
}
