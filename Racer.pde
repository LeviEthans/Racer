int scene;
int p1x, p1y;
int p2x, p2y;
void setup() {
  fullScreen();
  p1x = 50;
  p2x = width - 50;
  p1y = height/4;
  p2y = height * 3/4;
  scene = 0;
}

void draw() {
  if (scene == 0) {
    background(0, 0, 255);
    textSize(100);
    textAlign(CENTER, TOP);
    fill(255, 255, 0);
    text("RACER", width/2, height/4);
    text("A 2 Player Racing Game!", width/2, height/2);
    textAlign(CENTER, BOTTOM);
    text("Press Green Button to Start!", width/2, height * 5/6);
  }

  if (scene == 1) {
    background(200, 0, 255);
    textSize(100);
    fill(255);
    text("INTRUCTIONS", width/2, height/4);
    textSize(60);
    text("Reach the other end before the other player!", width/2, height/2);
    text("Press your TOP CENTER botton to press through to the other side!", width/2, height/2 + 100);
  }

  if (scene == 2) {
    background(0);
    noStroke();
    ellipseMode(RADIUS);
    if(p1x >= width){
     scene = 3; 
    }
    if(p2x <= 0){
     scene = 4; 
    }
    fill(0, 0, 255);
    rect(0, 0, width, height/2);
    fill(255, 0, 0);
    ellipse(p1x, p1y, 50, 50);
    fill(255, 0, 0);
    rect(0, height/2, width, height);
    fill(0, 0, 255);
    ellipse(p2x, p2y, 50, 50);
  }
  
  if (scene == 3){
    textSize(200);
    background(0, 0, 255);
    fill(255, 0, 0);
    text("P1 WINS!", width/2, height/2);
    textSize(75);
    text("Press Green Button to return to Start!", width/2, height * 3/4);
  }
  
  if(scene == 4){
    textSize(200);
    background(255, 0, 0);
    fill(0, 0, 255);
    text("P2 WINS!", width/2, height/2);
    textSize(75);
    text("Press Green Button to return to Start!", width/2, height * 3/4);
  }
}

void keyPressed() {
    if (key == '6' && scene == 0) {
      scene = 1;
    } else if (key == '6' && scene == 1) {
      scene = 2;
    }
  if (key == 'e' && scene == 2) {
    p1x += 20;
  }
  if (key == 'i' && scene == 2) {
    p2x -= 20;
  }
  if(key == '6' && scene == 3){
   scene = 0;
   p1x = 50;
   p2x = width - 50;
  }
  if(key == '6' && scene == 4){
   scene = 0;
   p1x = 50;
   p2x = width - 50;
  }
}
