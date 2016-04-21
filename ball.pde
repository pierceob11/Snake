class Ball
{
  //Field
  float ballX, ballY;
  float ballSpeedX, ballSpeedY;
  boolean ballStart;
  float ballSize;
  
  Ball()
  {
  ballX = displayWidth / 2;
  ballY = displayHeight / 2;
  ballSpeedX = 4;
  ballSpeedY = 4;
  ballStart = false;
  ballSize = 20;
  }
  void update()
  {
  if((keyPressed == true) && (key == 'p'))
  {
    ballStart = true;
  }
  if(ballStart == true)
  {
   ballX = ballX + ballSpeedX;
   ballY = ballY + ballSpeedY;
  }
   if(ballX > width) //Right
{
  ballSpeedX = -ballSpeedX;
}
  if(ballX < 0) //Left
{
  ballSpeedX = -ballSpeedX;
}
  }
  void render()
  {
    fill(255);
    ellipse(ballX, ballY, ballSize, ballSize);
  }
  
}