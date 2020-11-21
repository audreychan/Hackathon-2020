PImage cursor;

void setup(){
  fullScreen();
  background(0);
  noCursor();
  
  cursor = loadImage("cursor.png");
  cursor.resize(50, 50);
}

void draw(){
  background(#DD5A5D);
  image(cursor, mouseX, mouseY);
  Button button1 = new Button(height/2, width/2, "test");
}
