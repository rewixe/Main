abstract class Object
{
  PVector pos;
  PVector forward;
  float size;
  
  Object()
  {
    
  }
    
  abstract void render();
  
}

//add hit as abstract class