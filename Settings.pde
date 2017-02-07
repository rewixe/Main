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
    
    //SETTINGS BARS
    rect(180, 100, 340, 50, 20);
    rect(180, 180, 340, 50, 20);
    
    //BUTTONS 1, 2, 3
    rect(580, 100, 50, 50, 20);
    rect(650, 100, 50, 50, 20);
    rect(720, 100, 50, 50, 20);
    
    rect(580, 180, 50, 50, 20);
    rect(650, 180, 50, 50, 20);
    rect(720, 180, 50, 50, 20);
    
    //NUMMBERS
    pushStyle();
    textSize(20);
    fill(255, 0, 0);
    text("1", 605, 125);
    text("2", 675, 125);
    text("3", 745, 125);
    text("1", 605, 205);
    text("2", 675, 205);
    text("3", 745, 205);
    popStyle();

    
    rect((width/2)-100, 400, 200, 50, 20);
    fill(255, 0, 0);
    strokeWeight(10);
    textSize(25);
    String homeTxt = "H O M E";
    String diff = "D I F F I C U L T Y";
    String speed = "S P E E D";
    text(homeTxt, (width/2), 422);
    text(diff, 350, 122);
    text(speed, 350, 202);
    popStyle();
  }
 
}