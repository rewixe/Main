void setup()
{
  size(1000,500);
  
  
  Player player = new Player();
  Obstacle obstacle = new Obstacle();
  Obstacle2 obstacle2 = new Obstacle2();
  Obstacle3 obstacle3 = new Obstacle3();
  Settings settings = new Settings();
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
MainMenu startMenu = new MainMenu(); //creates object
ArrayList<Object> Objects = new ArrayList<Object>();

int i;
int py = (240);
int mode = 0;
int pspeed = 20;
int bspeed = 10;
int rad = 25;
int diff = 2;
int timerChk = 0;
int count;
int timeVar = 7;
int countVar = 1;
int start = millis();
int bx = 30;
int by;
int score = 0;
float fireRate = 1;
float toPass = 1.0 / fireRate;
float elapsed = toPass;
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
      for (int i = Objects.size() -1 ; i >= 0  ; i --)
      {
        if(diff == 1)
        {
          Object go = Objects.get(i); 
          if(!(go instanceof Obstacle2 || go instanceof Obstacle3))
          {
            go.render();  
            go.hit();
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
        
        if(key == ' ' && elapsed > toPass)
        {
          Bullet shot = new Bullet();
          Objects.add(shot);
          elapsed = 0;
        }
        
        elapsed += timeDelta;
      }
    }
  }
  
  /*
  if(mode == 2)
  {
    startMenu.bg();
    settings.buttons();
  }
  */
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
  
}

void keyPressed() 
{
  if (key == CODED) 
  {
    if (keyCode == UP && py > 0 && mode == 1) 
    { 
      py = py - pspeed;
    } 
    else if (keyCode == DOWN && py < (height-80) && mode == 1) 
    {
      py = py + pspeed;
    } 
  }
  /*
  if(key == ' ' && mode == 1)
  {
    shot.render();
  }
  */
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