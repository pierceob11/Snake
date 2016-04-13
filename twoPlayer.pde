void player2()
{
  rect(playerX, playerY - 650, playerWidth, playerHeight);
  
  if(keyPressed)
  {
    if(keyCode == 'a')
    {
      playerX -= 7.5;
    }
    if(keyCode == 'd')
    {
      playerX += 7.5;
    }
  }
}