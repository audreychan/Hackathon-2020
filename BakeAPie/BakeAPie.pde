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
  Button start = new Button(width/2, height/2 - 120, "Start!");
  Button instructions = new Button(width/2, height/2, "Instructions!");
  Button credits = new Button(width/2, height/2 + 120, "Credits!");
  
  // cursor
  image(cursor, mouseX, mouseY);
}
