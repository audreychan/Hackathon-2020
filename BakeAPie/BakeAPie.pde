PImage cursor;

void setup(){
  fullScreen();
  background(0);
  noCursor();
  
  cursor = loadImage("cursor.png");
  cursor.resize(50, 50);
}

void draw(){
  background(221, 90, 93);
  image(cursor, mouseX, mouseY);
}
