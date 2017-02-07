public class Obstacle3 extends Bullet {
  
 
  //render obstacles
  public void render()
  {
    fill(255, 0, 0);
    strokeWeight(2);
    stroke(0);
    ellipse(this.x3, this.objY3, rad, rad);
    this.x3 += -objSpeed;
    if (this.x3 < 0)
    {
      this.objY3 = random(50, 420);
      this.x3 = 1000;
    } 
  }
  
  
  //when obstacles are hit
  public void hit()
  {
    for(int i = 0; i < 2; i++)
    {
      if (this.x3 >= 30 && this.x3 <= 60 && this.objY3 >= (py) && this.objY3 <= (py + 50) ) 
      {
        score--;
      }
    }
    
    
    for (int i = Objects.size() -1 ; i >= 0  ; i --)
    {
      Object go = Objects.get(i);
      if(go instanceof Bullet)
      {
        if(this.x3 == shot.bx && this.objY3 == shot.by)
        {
          score++;
        }
      }
    }
  }
}