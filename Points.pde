public class Points extends Object {
  
  float pntY;
  int px;
  float pntSpeed = 8.0;
  int pntrad = 10;
  
  public void render()
  {
    fill(255, 255, 0);
    ellipse(this.px, this.pntY, pntrad, pntrad);
    this.px += -pntSpeed;
    if (this.px < 0)
    {
      this.pntY = random(50, 450);
      this.px = 1000;
    }
  }
  
}