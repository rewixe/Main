void setup()
{
  size(1000,500);
}


int i;
int py = (240);
int mode = 0;
int pspeed = 20;
float ospeed = 5.0;
int rad = 25;
int diff = 1;
int timerChk = 0;
int count;
int timeVar = 7;
int countVar = 0;
int start = millis();

MainMenu startMenu = new MainMenu(); //creates object
Game game = new Game();
Player player = new Player();
Obstacle obstacle = new Obstacle();
Obstacle obstacle2 = new Obstacle();
Settings settings = new Settings();
Points point = new Points();

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
    countVar = 1;
    game.bg();
    game.timer();
    if(count <= 0)
    {
      background(0, 0, 255);
      game.bg();
      player.render();
      obstacle.render();
      point.render();
      if(diff == 2)
      {
        obstacle2.render();
      }
      obstacle.hit();
    }
  }
  
  if(mode == 2)
  {
    startMenu.bg();
    settings.buttons();
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
  
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP && py > 0 && mode == 1) 
    { 
      py = py - pspeed;
    } 
    else if (keyCode == DOWN && py < (height-60) && mode == 1) 
    {
      py = py + pspeed;
    } 
  }
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