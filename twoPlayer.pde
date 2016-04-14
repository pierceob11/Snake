class Player2
{
  //Field
  float playerX2, playerY2;
  float playerWidth, playerHeight;
  
  Player2()
  {
    playerWidth = 120;
    playerHeight = playerWidth * 0.25f;
    playerX2 = displayWidth / 2;
    playerY2 = displayHeight - 650;
  }
  
  void update() //What the instance of the class can do
  {
    if(keyPressed)
    {
      if(key == 'a')
      {
        playerX2 -= 7.5;
      }
      if(key == 'd')
      {
        playerX2 += 7.5;
      }
    }
  }
  
  void render() //Visualistion
  {
    rectMode(CENTER);
    rect(playerX2, playerY2, playerWidth, playerHeight);
  }
  
  
  
  
}