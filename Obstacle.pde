public class Obstacle extends Object {
  
  float objY;
  int x;
  int objSpeed;
  
  public void render()
  {
    fill(255, 0, 0);
    ellipse(this.x, this.objY, rad, rad);
    this.x += -ospeed;
    if (this.x < 0)
    {
      this.objY = random(50, 450);
      this.x = 1000;
    } 
  }
  
  public void hit()
  {
    for(i = 0; i < 2; i++)
    {
      if (obstacle.x >= 30 && obstacle.x <= 60 && obstacle.objY >= (py) && obstacle.objY <= (py + 45) || obstacle2.x >= 30 && obstacle2.x <= 60 && obstacle2.objY >= (py) && obstacle2.objY <= (py + 45)) 
      {
        background(0);
      }
    }
  }
}

//make oy1 the main one