public class Ball {
  private int x, y, size;
  private int nextX = 1;
  private int nextY = 1;
  private color ballColor = color(random(0, 255), random(0, 255), random(0, 255));
  private final int speed = 2;

  public Ball(int x, int y, int size) {
    this.x  = x;
    this.y = y;
    this.size = size;
  }

  public void move() {
    x += speed * nextX;
    y += speed * nextY;

    if (x + 25 > width || x - 25 < 0) {
      nextX *= -1;
    }
    if (y + 25 > height || y - 25 < 0) {
      nextY *= -1;
    }
  }

  public void draw() {
    fill(this.ballColor);
    ellipse(x, y, size, size);
  }

  public boolean mouseInBall(int mousex, int mousey) {
    return dist(this.x, this.y, mousex, mousey) < this.size / 2;
  }

  public void changeColor() {
    this.ballColor = color(random(0, 255), random(0, 255), random(0, 255));
  }
}
