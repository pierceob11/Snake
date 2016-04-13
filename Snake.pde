int stage;
PFont title;
float w, halfW;
float playerX, playerY;
float playerWidth, playerHeight;
float ballX, ballY;
float ballSpeedX, ballSpeedY;

void setup()
{
  size(displayWidth, displayHeight);
  stage = 1;
  playerWidth = 120;
  playerHeight = playerWidth * 0.25f;
  playerX = displayWidth / 2;
  playerY = displayHeight - 60;
  
}


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
    player1();
  }
}