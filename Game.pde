public class Game {
  
  //Background
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
  
  //countown timer
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
  
  //Levels
  public void level1()
  {
    pushStyle();
    textSize(50);
    fill(0);
    text("LEVEL ONE", 700, 490);
    popStyle();
    
    objSpeed = 5;
  }
  
  public void level2()
  {
    pushStyle();
    textSize(50);
    fill(0);
    text("LEVEL TWO", 700, 490);
    popStyle();
    
    objSpeed = 10;
  }
  
  public void level3()
  {
    pushStyle();
    textSize(50);
    fill(0);
    text("LEVEL THREE", 700, 490);
    popStyle();
    
    objSpeed = 15;
  }
  
  public void level4()
  {
    pushStyle();
    textSize(50);
    fill(0);
    text("LEVEL FOUR", 700, 490);
    popStyle();
    
    objSpeed = 20;
  }
  
  public void level5()
  {
    pushStyle();
    textSize(50);
    fill(0);
    text("LEVEL FIVE", 700, 490);
    popStyle();
    
    objSpeed = 23;
  }
  
  //Victory screen method
  public void victory()
  {
    pushStyle();
    textSize(60);
    fill(0);
    background(255, 0, 0);
    text("Y O U   W O N!", 270, height/2);
    popStyle();
    
    objSpeed = 23;
  }
  
  //game over screen method
  public void over()
  {
    pushStyle();
    textSize(60);
    fill(0);
    background(255, 0, 0);
    text("G A M E  O V E R", 250, height/2);
    popStyle();
    
    objSpeed = 23;
  }
}