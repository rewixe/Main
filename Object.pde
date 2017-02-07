abstract class Object
{
  int x1, x2, x3;
  float objY1, objY2, objY3;
  float by = py + 15;
  int bx = 60;
  
  Object()
  {
    
  }
    
  abstract void render();
  abstract void hit();
  
}

//add hit as abstract class