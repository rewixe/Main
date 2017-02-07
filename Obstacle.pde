public class Obstacle extends Object {
  
  float objY1;
  int x1;
  
  public void render()
  {
    fill(255, 0, 0);
    strokeWeight(2);
    stroke(0);
    ellipse(this.x1, this.objY1, rad, rad);
    this.x1 += -objSpeed;
    if (this.x1 < 0)
    {
      this.objY1 = random(50, 420);
      this.x1 = 1000;
    } 
  }
  
  public void hit()
  {
    for(int i = 0; i < 2; i++)
    {
      if (this.x1 >= 30 && this.x1 <= 60 && this.objY1 >= (py) && this.objY1 <= (py + 45) ) 
      {
        score--;
      }
    }
  }
}