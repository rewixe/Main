PFont myFont;

public class MainMenu {
  //background for menu
  public void bg()
  {
    for(int i = 0; i < height; i += 10)
    {
      stroke(255,0,0);
      line(0, i, width, i);
    }
  }
  
  //menu
  public void menu()
  {
    pushStyle();
    fill(0);
    textSize(45);
    textAlign(CENTER, CENTER);
    String fontName = "OCR A Extended";
    myFont = createFont(fontName, 50);
    textFont(myFont);
    String txt1 = "Welcome to";
    String txt2 = "The Dodge Game";
    text(txt1, width/2, (height/2)-120);
    text(txt2, width/2, (height/2)-70); 
    popStyle();
  }
  
  //play game and settings buttons
  public void buttons()
  {
    pushStyle();
    fill(255);
    strokeWeight(3);
    rect((width/2)-135, 250, 270, 70, 20);
    rect((width/2)-135, 340, 270, 70, 20);
    textSize(25);
    textAlign(CENTER, CENTER);
    fill(255, 0, 0);
    text("P L A Y", width/2, 283);
    text("S E T T I N G S", width/2, 372);
    popStyle(); 
  }
  
}//end class