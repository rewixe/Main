void setup()
{
  size(1000,500);
}


int i;
int py = (240);
int mode = 0;
int pspeed = 20;
float ospeed = 5.0;
int x = 1000;
int rad = 25;
float oy = random(50, 450);

MainMenu startMenu = new MainMenu(); //creates object
Game game = new Game();
Player player = new Player();
Obstacle obstacle = new Obstacle();

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
    background(0, 0, 255);
    game.bg();
    player.player();
    obstacle.obstacle();
    obstacle.hit();
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

//if statement in draw function to differentiate modes
//test1