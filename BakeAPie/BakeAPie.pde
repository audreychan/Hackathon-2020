PImage cursor, logo, kitchen, costcoFront;
PFont chancery, cambria;
int scene, time;
String flavor;
int delay = 60;
int x, y, speed;

void setup() {
  fullScreen();
  background(0);
  noCursor();

  scene = 0;
  flavor = "unidentified";
  time = 0;

  cursor = loadImage("data/cursor.png");
  cursor.resize(50, 50);

  logo = loadImage("data/PieFly.png");
  logo.resize(0, 700);

  costcoFront = loadImage("data/costcoFront.png");
  costcoFront.resize(width, height);

  kitchen = loadImage("data/kitchen.png");
  kitchen.resize(width, height);

  chancery = loadFont("Apple-Chancery-35.vlw");
  cambria = loadFont("Cambria-30.vlw");
}

void draw() {
  // start screen setup
  background(#dd5a5d);

  //a frame counter
  time ++;

  //start scene
  if (scene == 0) {
    // logo
    imageMode(CENTER);

    image(logo, width/2, height/2 - 300);

    // start screen buttons
    Button start = new Button(width/2, height/2, "Start!");
    Button instructions = new Button(width/2, height/2 + 120, "Instructions!");
    Button credits = new Button(width/2, height/2 + 240, "Credits!");

    if (start.pressed()) {
      time = 0;
      scene = 3;
    } else if (instructions.pressed()) scene = 1;
    else if (credits.pressed()) scene = 2;
  }
  //instructions
  else if (scene == 1) {
    textFont(cambria);
    textAlign(CENTER, BOTTOM);
    text("Shop at Costco, make a pie, and finish baking it before the time runs out!\nFollow the instructions at each screen and choose the options to make the perfect pie.\nHave fun on your baking adventure!", width/2, height/2+300);
    Button back = new Button(width/2, height/2+400, "go back");

    if (back.pressed()) scene = 0;
  }
  //credits
  else if (scene == 2) {
    textFont(cambria);
    textAlign(CENTER, BOTTOM);
    text("credits", width/2, height/2+300);

    Button back = new Button(width/2, height/2+400, "go back");

    if (back.pressed()) scene = 0;
  }
  //past time
  else if(scene == 3){
    textFont(cambria);
    textAlign(CENTER, BOTTOM);
    //text("In the last game, you spent a " + j + " average time playing. You will get a " + j + "time.", width/2, height/2+300);
    text("You will have ____ to complete this game.", width/2, height/2+100);
    
    if(time >= delay){
      Button cont = new Button(width/2, height/2+200, "continue");

      if (cont.pressed()) {
        time = 0;
        scene = 4;
      }
    }
  }
  //go inside
  else if(scene == 4){
    image(costcoFront, 0, 0);

    textFont(cambria);
    textAlign(CENTER, BOTTOM);
    text("You have arrived at Costco to buy the ingredients for your pie! Roam around the store to find everything you need.", width/2, height/2+100);
    
    if(time >= delay){
      Button inside = new Button(width/2, height/2+200, "go inside");
      
      if(inside.pressed()) {
        time = 0;
        scene = 5;
      }
    }
  }
  //pick fruit
  else if(scene == 5){
    textFont(cambria);
    textAlign(CENTER, BOTTOM);
    text("The first thing you come across is the fruit. Pick the fruit you want to make your pie with!", width/2, height/2+100);
    
    if(time >= delay){
      Button apple = new Button(width/2 - 300, height/2+200, "Apple");
      Button berries = new Button(width/2, height/2+200, "Berries");
      Button pumpkin = new Button(width/2 + 300, height/2+200, "Pumpkin");
      
      if(apple.pressed()){
        flavor = "apple";
        time = 0;
        scene = 6;
      } else if (berries.pressed()) {
        flavor = "berries";
        time = 0;
        scene = 6;
      } else if (pumpkin.pressed()) {
        flavor = "pumpkin";
        time = 0;
        scene = 6;
      }
    }
  }
  // roaming
  else if (scene == 6) {
    fill(0);
    rectMode(CENTER);
    rect(width/2, height/2-100, 500, 500); 
    fill(100);
    rect(width/2, height/2-100, 200, 250); //dry
    rectMode(CORNER);
    rect(width/2-250, height/2-350, 200, 100); //dairy
    rect(width/2+50, height/2-350, 200, 100); //spices
    rect(width/2+50, height/2+50, 200, 100); //frozen
    
    ellipse(x, y, 10, 10);
  }
  //leave
  else if (scene == 7) {
    imageMode(CORNER);
    image(kitchen, 0, 0);

    if (time >= delay) {
      Button leave = new Button(width/2, height/2+200, "leave");

      if (leave.pressed()) {
        time = 0;
        scene = 8;
      }
    }
  }
  //get home
  else if (scene == 8) {
    imageMode(CORNER);
    image(kitchen, 0, 0);

    if (time >= delay) {
      Button cook = new Button(width/2, height/2+200, "start cooking");

      if (cook.pressed()) {
        time = 0;
        scene = 9;
      }
    }

    // pie crust
    else if (scene == 9) {
      imageMode(CORNER);
      image(kitchen, 0, 0);
    }
    // filling
    else if (scene == 10) {
      imageMode(CORNER);
      image(kitchen, 0, 0);
    }
    // cook
    else if (scene == 11) {
      imageMode(CORNER);
      image(kitchen, 0, 0);
    }
    // end
    else if (scene == 12) {
      imageMode(CORNER);
      image(kitchen, 0, 0);
    }
  }
  
  // cursor
  imageMode(CORNER);
  image(cursor, mouseX, mouseY);
}

void keyPressed(){
  if(keyPressed && key == 'W') x -= speed;
  if(keyPressed && key == 'S') x += speed;
  if(keyPressed && key == 'A') y -= speed;
  if(keyPressed && key == 'S') y += speed;
}
