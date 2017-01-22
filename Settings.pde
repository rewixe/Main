public class Settings {
  public void buttons()
  {
    pushStyle();
    fill(0);
    textSize(45);
    textAlign(CENTER, CENTER);
    String fontName = "OCR A Extended";
    myFont = createFont(fontName, 50);
    textFont(myFont);
    strokeWeight(3);
    rect((width/2)-100, 400, 200, 50, 20);
    String homeTxt = "Home";
    text(homeTxt, (width/2)-100, 450);
    popStyle();
  }
 
}