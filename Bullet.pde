public class Bullet extends Object {
  
  float by = py + 15;
  int bx = 60;
  int bspeed = 5;

  
  public void render()
  {
    pushStyle();
    fill(0);
    strokeWeight(1);
    stroke(0);
    rect(this.bx, this.by, 5, 3);
    this.bx += bspeed;
    if (this.bx > width)
    {
      /*this.bx = 60;
      this.by = py + 15;*/
    }
    popStyle();
    
  }
  
  public void hit()
  {
    
  }
  
}