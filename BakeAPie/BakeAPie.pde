PImage cursor, logo, kitchen, costco;
PFont chancery;
int scene;
String flavor;

void setup(){
  fullScreen();
  background(0);
  noCursor();
  
  scene = 0;
  flavor = "unidentified";
  
  cursor = loadImage("cursor.png");
  cursor.resize(50, 50);
  
  logo = loadImage("data/PieFly.png");
  logo.resize(0, 1000);
  
  costco = loadImage("costco.png");
  costco.resize(displayWidth, displayHeight);
  
  kitchen = loadImage("kitchen.png");
  kitchen.resize(displayWidth, displayHeight);
  
  chancery = loadFont("Apple-Chancery-35.vlw");
}

void draw(){
  // start screen setup
  background(#dd5a5d);
  
  //start scene
  if(scene == 0){
    
    imageMode(CENTER);
    image(logo, width/2, height/2 - 500);
    
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
    
    Button back = new Button(width/2, height/2+400, "go back");
    
    if(back.pressed()) scene = 0;
  }
  //credits
  else if(scene == 2){
    
    Button back = new Button(width/2, height/2+400, "go back");
    
    if(back.pressed()) scene = 0;
  }
  //past time
  else if(scene == 3){
    
    Button cont = new Button(width/2, height/2+200, "continue");
    
    if(cont.pressed()) scene = 4;
  }
  //go inside
  else if(scene == 4){
    background(194, 194, 255);
    image(costco, displayWidth/2, displayHeight/2);
    Button inside = new Button(width/2, height/2+200, "go inside");
    
    //if(inside.pressed()) scene = 5;
  }
  //pick fruit
  else if(scene == 5){
    
    Button apple = new Button(width/2 - 145, height/2+200, "Apple");
    Button berries = new Button(width/2, height/2+200, "Berries");
    Button pumpkin = new Button(width/2 + 145, height/2+200, "Pumpkin");
    
    if(apple.pressed()){
      flavor = "apple";
      scene = 6;
    }
    else if(berries.pressed()){
      flavor = "berries";
      scene = 6;
    }
    else if(pumpkin.pressed()){
      flavor = "pumpkin";
      scene = 6;
    }
  }
  //roaming
  else if(scene == 6){
    
  }
  //leave
  else if(scene == 7){
    
    Button leave = new Button(width/2, height/2+200, "leave");
    
    if(leave.pressed()) scene = 8;
  }
  //get home
  else if(scene == 8){
    
    image(kitchen, 0, 0);
    Button cook = new Button(width/2, height/2+200, "start cooking");
    
    if(cook.pressed()) scene = 9;
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
