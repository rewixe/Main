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
    rect(200, 100, 300, 50, 20);
    rect(200, 180, 300, 50, 20);
    rect((width/2)-100, 400, 200, 50, 20);
    fill(255, 0, 0);
    strokeWeight(10);
    textSize(25);
    String homeTxt = "H O M E";
    String diff = "D I F F I C U L T Y";
    String speed = "S P E E D";
    text(homeTxt, (width/2), 422);
    text(diff, 260, 120);
    text(speed, 260, 200);
    popStyle();
  }
 
}

//settings can deal with difficulty(speed), bg colour, and number of obs.