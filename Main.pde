void setup()
{
  size(1000,500);
  
  
  Player player = new Player('w', 's', ' ');
  Obstacle obstacle = new Obstacle();
  Obstacle2 obstacle2 = new Obstacle2();
  Obstacle3 obstacle3 = new Obstacle3();
  Points point = new Points();
  Bullet shot = new Bullet();
  
  Objects.add(obstacle);
  Objects.add(player);
  Objects.add(point);
  Objects.add(shot);
  Objects.add(obstacle2);
  Objects.add(obstacle3);
}

Game game = new Game();
Settings settings = new Settings();
MainMenu startMenu = new MainMenu(); //creates object
ArrayList<Object> Objects = new ArrayList<Object>();
boolean[] keys = new boolean[1000];


int py = (240);
int mode = 0;
int pspeed = 7;
int bspeed = 10;
int rad = 25;
int diff = 1;
int count;
int timeVar = 7;
int countVar = 1;
int bx = 60;
int objSpeed = 5;
float score = 0.0;
float timeDelta = 1.0f / 60.0f;
int ammo = 100;



void draw()
{
  background(255);

  
  if(mode == 0)
  {
    startMenu.bg();
    startMenu.menu();
    startMenu.buttons();
  }
  
  
  if(mode == 1)
  {

    
    game.bg();
    game.timer();
    
    if(count <= 0)
    {
      if(score < 200)
      {
        game.level1();
      }
      
      if(score >= 200 && score < 300)
      {
        game.level2();
      }
      
      if(score >= 300 && score < 500)
      {
        game.level3();
      }
      
      if(score >= 500 && score < 800)
      {
        game.level4();
      }
      
      if(score >= 800 && score < 1000)
      {
        game.level5();
      }
      
      
      
      
      
      for (int i = Objects.size() -1 ; i >= 0  ; i --)
      {
        if(diff == 1)
        {
          Object go = Objects.get(i);
          if(!(go instanceof Obstacle2 || go instanceof Obstacle3))
          {
            go.render();  
            go.hit();
            if(go instanceof Bullet && this.bx > width)
            {
              Objects.remove(go);
            }
          }
        }
        
        if(diff == 2)
        {
          Object go = Objects.get(i); 
          if(!(go instanceof Obstacle3))
          {
            go.render();  
            go.hit();
          }
        }
        
        if(diff == 3)
        {
          Object go = Objects.get(i);
            go.render();  
            go.hit();
        }
       
      }
      
    }
  }
  
  
  if(mode == 2)
  {
    startMenu.bg();
    settings.buttons();
  }
  
  if(score > 1000)
  {
        game.victory();
  }
  
}


void mouseClicked()
{
  if(mode == 0 && mouseX > 365 && mouseX < 635 && mouseY > 250 && mouseY < 320)
  {
    mode = 1; 
  }
  
  if(mode == 0 && mouseX > 365 && mouseX < 635 && mouseY > 340 && mouseY < 410)
  {
    mode = 2; 
  }
  
  if(mode == 2 && mouseX > 400 && mouseX < 600 && mouseY > 400 && mouseY < 450)
  {
    mode = 0; 
  }
  
  //SETTINGS
  if(mode == 2 && mouseX > 580 && mouseX < 630 && mouseY > 100 && mouseY < 150)
  {
    diff = 1; 
  }
  
  if(mode == 2 && mouseX > 650 && mouseX < 700 && mouseY > 100 && mouseY < 150)
  {
    diff = 2; 
  }
  
  if(mode == 2 && mouseX > 720 && mouseX < 770 && mouseY > 100 && mouseY < 150)
  {
    diff = 3; 
  }
  
  if(mode == 2 && mouseX > 580 && mouseX < 630 && mouseY > 180 && mouseY < 230)
  {
    pspeed = 5; 
  }
  
  if(mode == 2 && mouseX > 650 && mouseX < 700 && mouseY > 180 && mouseY < 230)
  {
    pspeed = 10; 
  }
  
  if(mode == 2 && mouseX > 720 && mouseX < 770 && mouseY > 180 && mouseY < 230)
  {
    pspeed = 15; 
  }
  
  
  
}

void keyPressed() 
{

  { 
    keys[keyCode] = true;
  }

}
 
void keyReleased()
{
  keys[keyCode] = false; 
}

boolean checkKey(int k)
{
  if (keys.length >= k) 
  {
    return keys[k] || keys[Character.toUpperCase(k)];  
  }
  return false;
}


//change settings screen
//if statement in draw function to differentiate modes
//test1
//gameObject for player and obst w/ render class
//fix timer
//create bullets pshape
//speed upgrades
//interface
//create bullet array, add to array
//remove bullets when offscreen
//why does .remove work in all diffs despite only being in one