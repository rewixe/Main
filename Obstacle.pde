public class Obstacle {
  public void obstacle()
  {
    fill(255, 0, 0);
    ellipse(x, oy, rad, rad);
    x += -ospeed;
    if (x < 0)
    {
      oy = random(50, 450);
      x = 1000;
    } 
  }
  
  public void hit()
  {
    if (x >= 30 && x <= 60) 
    {
      
    }
  }
}