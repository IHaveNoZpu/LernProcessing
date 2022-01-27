Ball[] ballArr = new Ball[4];

//------------------------------------------------------\\
void setup() {
  frameRate(60);
  size(640, 400);

  for (int i = 0; i < ballArr.length; i++) {
    ballArr[i] = new Ball(int(random(50, 400)), int(random(100, 400)), int(random(30, 50)));
  }
}

//-------------------------------------------------------\\
void draw() {
  background(155);

  for (int i = 0; i < ballArr.length; i++) {
    ballArr[i].draw();
    ballArr[i].move();
  }
}

//-------------------------------------------------------\\
void mousePressed() {
  for (int i = 0; i < ballArr.length; i++) {
    if (ballArr[i].mouseInBall(mouseX, mouseY)) {
      println("Click");
      ballArr[i].changeColor();
    }
  }
}
