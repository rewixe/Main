public class Game {
  public void bg()
  {
    pushStyle();
    background(255);
    stroke(0);
    fill(255, 0, 0);
    strokeWeight(2);
    rect(width-(width+30), height-50, width+50, height);
    fill(0);
    textSize(45);
    text("S C O R E : ", 40, 490);
    text(score, 350, 490);
    popStyle();
  }
  
  public void timer()
  {
    pushStyle();
    textSize(50);
    fill(0);
    if(countVar == 1)
    {
      count = timeVar - (millis()/1000);
      if(count <=0)
      {
        fill(255); 
      }
    }
    text(count, width/2, height/2);
    popStyle();
  }
  
  public void level()
  {
    pushStyle();
    textSize(50);
    fill(0);
    text("LEVEL ONE", 700, 490);
    popStyle();
    
  }
}