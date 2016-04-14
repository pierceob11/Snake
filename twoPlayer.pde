class Player2
{
  //Field
  float playerX2, playerY2;
  float playerWidth, playerHeight;
  float playerSpeed;
  
  Player2()
  {
    playerWidth = 120.0f;
    playerHeight = playerWidth * 0.25f;
    playerX2 = displayWidth / 2;
    playerY2 = displayHeight - 650;
    playerSpeed = 7.5f;
  }
  
  void update() //What the instance of the class can do
  {
    playerSpeed = 7.5f;
    if(keyPressed)
    {
      if(key == 'a')
      {
        playerX2 -= playerSpeed;
      }
      if(key == 'd')
      {
        playerX2 += playerSpeed;
      }
      if(playerX2 - playerWidth / 2 < 0)
      {
        playerSpeed = 0;
        playerX2 = playerWidth / 2;
      }
      if(playerX2 + playerWidth / 2 > displayWidth)
      {
        playerSpeed = 0;
        playerX2 = -playerWidth / 2;
      }
    }
  }
  
  void render() //Visualistion
  {
    rectMode(CENTER);
    rect(playerX2, playerY2, playerWidth, playerHeight);
  }
  
  
  
  
}