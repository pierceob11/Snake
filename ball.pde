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
  //Ball Start
  {
  if(keys[4])
  {
    ballStart = true;
  }
  if(ballStart == true)
  {
   ballX = ballX + ballSpeedX;
   ballY = ballY + ballSpeedY;
  }
  //Ball bouncing
   if(ballX > width) //Right
{
  ballSpeedX = -ballSpeedX;
}
  if(ballX < 0) //Left
{
  ballSpeedX = -ballSpeedX;
}
//Scoring
if(ballY > displayHeight)
{
  ballY = height / 2;
  ballX = width / 2;
  player2.P2score ++;
  ballStart = false;
}
if(ballY < 0)
{
  ballY = height / 2;
  ballX = width / 2;
  player1.P1score ++;
  ballStart = false;
}
  }
  //Ball to paddle interaction
  void render()
  {
    fill(255);
    ellipse(ballX - (ballSize / 2), ballY - (ballSize / 2), ballSize, ballSize);
  }
  }