int stage;
PFont title;
float w, halfW;
float playerX, playerY;
float playerWidth, playerHeight;
float ballX, ballY;
float ballSpeedX, ballSpeedY;
boolean ballStart;
float ballSize;
PImage background;

void setup()
{
  size(displayWidth, displayHeight);
  stage = 1;
  playerWidth = 120;
  playerHeight = playerWidth * 0.25f;
  playerX = displayWidth / 2;
  playerY = displayHeight - 60;
  ballX = displayWidth / 2;
  ballY = displayHeight / 2;
  ballSpeedX = 4;
  ballSpeedY = 4;
  ballStart = false;
  ballSize = 20;
  background = loadImage("pongbackground.jpg");
    
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
    ball();
    player2();
  }
}