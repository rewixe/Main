public class Player extends Object {
  
  float fireRate = 6;
  float toPass = 1.0 / fireRate;
  float elapsed = toPass;
  char fire;
  
  Player(char fire)
  {
    this.fire = fire;
  }
  
  public void render()
  {
    pushStyle();
    fill(255, 0, 0);
    strokeWeight(2);
    stroke(0);
    rect(30, py, 30, 30);
    popStyle();
    
    if(checkKey(fire) && elapsed > toPass && ammo > 0)
    {
      Bullet shot = new Bullet();
      Objects.add(shot);
      elapsed = 0;
      ammo--;
    }
    
    elapsed += timeDelta;
    
    
    
  }
  
  public void hit()
  {
    
  }
 
}