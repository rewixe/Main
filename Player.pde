public class Player extends Object {
  public void render()
  {
    pushStyle();
    fill(255, 0, 0);
    strokeWeight(2);
    stroke(0);
    rect(30, py, 30, 30);
    popStyle();
  }
 
}