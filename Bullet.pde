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
    for (int i = Objects.size() -1 ; i >= 0  ; i --)
    {
      Object go = Objects.get(i);
      if(go instanceof Obstacle || go instanceof Obstacle2 || go instanceof Obstacle3)
      {
        if(this.bx == obstacle.x1 && this.by == obstacle.objY1 || this.bx == obstacle2.x2 && this.by == obstacle2.objY2 || this.bx == obstacle3.x3 && this.by == obstacle3.objY3)
        {
          score++;
        }
      }
    }
  }
  
}