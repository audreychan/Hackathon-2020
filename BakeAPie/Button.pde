class Button{
  
  PFont chancery;
  int x, y;
  
  public Button(int x, int y, String text){
    
    chancery = loadFont("Apple-Chancery-35.vlw");
    
    noStroke();
    rectMode(CENTER);
    textAlign(CENTER, CENTER);
    textSize(35);
    textFont(chancery);
    
    fill(64, 200);
    rect(x+5, y+5, 250, 100);
    
    fill(#dd9a5a);
    rect(x, y, 250, 100);
    
    fill(0);
    text(text, x, y);
    
    this.x = x;
    this.y = y;
  }
  
  public boolean pressed(){
    if(mousePressed && mouseX <= x+125 && mouseX >= x-125 && mouseY <= y+50 && mouseY >= y-50){
      return true;
    }
    return false;
  }
  
}
