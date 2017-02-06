public class Player extends Object {
  public void render()
  {
    pushStyle();
    fill(255, 0, 0);
    rect(30, py, 30, 30);
    popStyle();
  }
 
}