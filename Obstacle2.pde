public class Obstacle2 extends Bullet {
  
  
  //render obstacles
  public void render()
  {
    fill(255, 0, 0);
    strokeWeight(2);
    stroke(0);
    ellipse(this.x2, this.objY2, rad, rad);
    this.x2 += -objSpeed;
    if (this.x2 < 0)
    {
      this.objY2 = random(50, 420);
      this.x2 = 1000;
    } 
  }
  
  
  //when obstacles are hit
  public void hit()
  {
    for(int i = 0; i < 2; i++)
    {
      if (this.x2 >= 30 && this.x2 <= 60 && this.objY2 >= (py) && this.objY2 <= (py + 50) ) 
      {
        score--;
      }
    }
    
    
    for (int i = Objects.size() -1 ; i >= 0  ; i --)
    {
      Object go = Objects.get(i);
      if(go instanceof Bullet)
      {
        if(this.x2 == shot.bx && this.objY2 == shot.by)
        {
          score++;
        }
      }
    }
    
    
  }
}