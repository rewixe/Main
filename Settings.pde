public class Settings {
  public void buttons()
  {
    pushStyle();
    fill(255);
    textSize(45);
    textAlign(CENTER, CENTER);
    String fontName = "OCR A Extended";
    myFont = createFont(fontName, 50);
    textFont(myFont);
    strokeWeight(3);
    rect((width/2)-100, 400, 200, 50, 20);
    fill(255, 0, 0);
    strokeWeight(10);
    textSize(25);
    String homeTxt = "H O M E";
    text(homeTxt, (width/2), 422);
    popStyle();
  }
 
}

//settings can deal with difficulty(speed), bg colour, and number of obs.