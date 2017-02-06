public class Obstacle3 extends Object {
  
  float objY3;
  int x3;
  int objSpeed3 = 5;
  
  public void render()
  {
    fill(255, 0, 0);
    strokeWeight(2);
    stroke(0);
    ellipse(this.x3, this.objY3, rad, rad);
    this.x3 += -objSpeed3;
    if (this.x3 < 0)
    {
      this.objY3 = random(50, 420);
      this.x3 = 1000;
    } 
  }
  
  public void hit()
  {
    for(i = 0; i < 2; i++)
    {
      if (this.x3 >= 30 && this.x3 <= 60 && this.objY3 >= (py) && this.objY3 <= (py + 45) /*|| obstacle2.x >= 30 && obstacle2.x <= 60 && obstacle2.objY >= (py) && obstacle2.objY <= (py + 45)*/) 
      {
        score--;
      }
    }
  }
}