public class Bullet extends Object {
  
  int bx;
  int by = py;
  int bspeed;
  
  public void render()
  {
    pushStyle();
    fill(0);
    strokeWeight(1);
    stroke(0);
    rect(bx, by, 5, 3);
    this.bx += bspeed;
    if (this.bx > width)
    {
      this.by = 1500;
    }
    popStyle();
    
  }
  
}