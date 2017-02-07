public class Player extends Object {
  
  float fireRate = 10;
  float toPass = 1.0 / fireRate;
  float elapsed = toPass;
  char up, down, fire;
  
  Player(char up, char down, char fire)
  {
    this.up = up;
    this.down = down;
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
    
    if(checkKey(up) && py > 0 && mode == 1)
    {
      py = py - pspeed;
    }
    
    if(checkKey(down) && py < (height-80) && mode == 1)
    {
      py = py + pspeed;
    }
    
    
    elapsed += timeDelta;
    
    
    
  }
  
  public void hit()
  {
  
  }
 
}