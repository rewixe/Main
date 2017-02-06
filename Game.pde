public class Game {
  public void bg()
  {
    pushStyle();
    background(255);
    stroke(0);
    fill(255, 0, 0);
    rect((width-width), height-30, width, height-30);
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
    }
    text(count, width/2, height/2);
    popStyle();
  }
}

/*if(timerChk == 0)
    {
      game.timer();
      timerChk = 1;
    }*/
    
//set count = someVariable - (int (millis()/1000));