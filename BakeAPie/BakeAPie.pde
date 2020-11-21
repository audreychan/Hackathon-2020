PImage cursor;
PFont chancery;

void setup(){
  fullScreen();
  background(0);
  noCursor();
  
  cursor = loadImage("cursor.png");
  cursor.resize(50, 50);
  
  chancery = loadFont("Apple-Chancery-35.vlw");
}

void draw(){
  // start screen setup
  background(#dd5a5d);
  
  // start screen buttons
  fill(#dd9a5a);
  noStroke();
  rectMode(CENTER);
  
  rect(width/2, height/2 - 120, 250, 100);
  rect(width/2, height/2, 250, 100);
  rect(width/2, height/2 + 120, 250, 100);
  
  fill(#dd5a9e);
  textSize(35);
  textFont(chancery);
  textAlign(CENTER, CENTER);
  
  text("Start!", width/2, height/2 - 100);
  text("Instructions!", width/2, height/2);
  text("Credits!", width/2, height/2 + 100);
  
  // cursor
  image(cursor, mouseX, mouseY);
  Button button1 = new Button(height/2, width/2, "test");
}
