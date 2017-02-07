public class Obstacle2 extends Object {
  
  float objY2;
  int x2;
  int objSpeed2 = 5;
  
  public void render()
  {
    fill(255, 0, 0);
    strokeWeight(2);
    stroke(0);
    ellipse(this.x2, this.objY2, rad, rad);
    this.x2 += -objSpeed2;
    if (this.x2 < 0)
    {
      this.objY2 = random(50, 420);
      this.x2 = 1000;
    } 
  }
  
  public void hit()
  {
    for(int i = 0; i < 2; i++)
    {
      if (this.x2 >= 30 && this.x2 <= 60 && this.objY2 >= (py) && this.objY2 <= (py + 45) ) 
      {
        score--;
      }
    }
  }
}