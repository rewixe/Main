public class Obstacle {
  public void obstacle()
  {
    fill(255, 0, 0);
    ellipse(x[0], oy[0], rad, rad);
    x[0] += -ospeed[0];
    if (x[0] < 0)
    {
      oy[0] = random(50, 450);
      x[0] = 1000;
    } 
  }
  
  public void obstacle2()
  {
    fill(255, 0, 0);
    ellipse(x[1], oy[1], rad, rad);
    x[1] += -ospeed[1];
    if (x[1] < 0)
    {
      oy[1] = random(50, 450);
      x[1] = 1000;
    } 
  }
  
  public void hit()
  {
    if (x[0] >= 30 && x[0] <= 60) 
    {
      
    }
  }
}