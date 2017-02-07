public class Obstacle extends Bullet {
  
  
  //render obstacles
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
  
  
  //when obstacles are hit
  public void hit()
  {
    for(int i = 0; i < 2; i++)
    {
      if (this.x1 >= 30 && this.x1 <= 60 && this.objY1 >= (py) && this.objY1 <= (py + 50) ) 
      {
        score--;
      }
    }
    
    
    for (int i = Objects.size() -1 ; i >= 0  ; i --)
    {
      Object go = Objects.get(i);
      if(go instanceof Bullet)
      {
        if(this.x1 == shot.bx && this.objY1 == shot.by)
        {
          score++;
        }
      }
    }
    
    
  }
}