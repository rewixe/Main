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

// || this.bx == x2 && this.by == objY2 || this.bx == x3 && this.by == objY3)

/*if (this.x2 >= 30 && this.x2 <= 60 && this.objY2 >= (py) && this.objY2 <= (py + 45) ) 
      {
        score--;
      }*/
      
      /*
      if(go instanceof Obstacle2 || go instanceof Obstacle3 || go instanceof Obstacle)
            {
              x1 = this.x1; x2 = this.x2; x3 = this.x3;
              objY1 = this.objY1; objY2 = this.objY2; objY3 = this.objY3;
              if(go instanceof Bullet)
              {
                bx = this.bx; by = this.by;
                if(bx == x1 && by == objY1)
                {
                  background(0);
                }
              }
            }*/