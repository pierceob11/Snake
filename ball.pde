void ball()
{
  fill(255);
  ellipse(ballX, ballY, ballSize, ballSize);
  
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

if(ballY > height) //Top
{
  ballSpeedY = -ballSpeedY;
}

if(ballX < 0) //Left
{
  ballSpeedX = -ballSpeedX;
}

if(ballY < 0)//Bottom
{
  ballSpeedY = -ballSpeedY;
}
}