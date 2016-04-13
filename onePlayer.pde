void player1()
{
  rect(playerX, playerY, playerWidth, playerHeight);
  
  if(keyPressed)
  {
    if(keyCode == LEFT)
    {
      playerX -= 7.5;
    }
    if(keyCode == RIGHT)
    {
      playerX += 7.5;
    }
  }
}