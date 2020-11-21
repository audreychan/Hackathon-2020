PImage cursor, logo;
PFont chancery;
int scene;

void setup(){
  fullScreen();
  background(0);
  noCursor();
  
  scene = 0;
  
  cursor = loadImage("cursor.png");
  cursor.resize(50, 50);
  
  logo = loadImage("data/PieFly.png");
  logo.resize(0, 700);
  
  chancery = loadFont("Apple-Chancery-35.vlw");
}

void draw(){
  // start screen setup
  background(#dd5a5d);
  
  //start scene
  if(scene == 0){
    imageMode(CENTER);
    image(logo, width/2, height/2 - 300);
    
    // start screen buttons
    Button start = new Button(width/2, height/2, "Start!");
    Button instructions = new Button(width/2, height/2 + 120, "Instructions!");
    Button credits = new Button(width/2, height/2 + 240, "Credits!");
    
    if(start.pressed()) scene = 3;
    else if(instructions.pressed()) scene = 1;
    else if(credits.pressed()) scene = 2;
  }
  //instructions
  else if(scene == 1){
    
  }
  //credits
  else if(scene == 2){
    
  }
  //past time
  else if(scene == 3){
    
  }
  //go inside
  else if(scene == 4){
    
  }
  //pick fruit
  else if(scene == 5){
    
  }
  //roaming
  else if(scene == 6){
    
  }
  //leave
  else if(scene == 7){
    
  }
  //get home
  else if(scene == 8){
    
  }
  //pie crust
  else if(scene == 9){
    
  }
  //filling
  else if(scene == 10){
    
  }
  //cook
  else if(scene == 11){
    
  }
  //end
  else if(scene == 12){
    
  }
  
  // cursor
  image(cursor, mouseX, mouseY);
}
