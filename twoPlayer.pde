class Player2
{
  //Field
  float playerX2, playerY2;
  float player2Width, player2Height;
  float player2Speed;
  
  Player2()
  {
    player2Width = 120.0f;
    player2Height = playerWidth * 0.25f;
    playerX2 = displayWidth / 2;
    playerY2 = displayHeight - 730;
    player2Speed = 7.5f;
  }
  
  void update() //What the instance of the class can do
  {
    player2Speed = 7.5f;
    if(keyPressed)
    {
      if(key == 'a')
      {
        playerX2 -= player2Speed;
      }
      if(key == 'd')
      {
        playerX2 += player2Speed;
      }
      if(playerX2 - player2Width / 2 < 0)
      {
        player2Speed = 0;
        playerX2 = player2Width / 2;
      }
      if(playerX2 + player2Width / 2 > displayWidth)
      {
        player2Speed = 0;
        playerX2 = displayWidth - 65;
      }
    }
  }
  
  void render() //Visualistion
  {
    rectMode(CENTER);
    rect(playerX2, playerY2, player2Width, player2Height);
  }
  
  
  
  
}