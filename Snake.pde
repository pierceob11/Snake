int stage;
PFont title;



void setup()
{
  size(500, 500);
  stage = 1;
  player = new Player(); //Instance
}

Player player; //Instance of the class should have lower case


void draw()
{
  background(0);
  
  //Main Menu
  if(stage == 1)
  {
    title();
    
    if(keyPressed == true)
    {
      stage = 2;
    }
  }
  
  if(stage == 2)
  {
    //Game components
    player.update();
    player.render();
  }
}