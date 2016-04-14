class Player1
{
  //Field
  float playerX1, playerY1;
  float player1Width, player1Height;
  float player1Speed;
  
  Player1()
  {
    player1Width = 120.0f;
    player1Height = playerWidth * 0.25f;
    playerX1 = displayWidth / 2;
    playerY1 = displayHeight - 50;
    player1Speed = 7.5f;
  }
  
  void update() //What the instance of the class can do
  {
    player1Speed = 7.5f;
    if(keyPressed)
    {
      if(keyCode == LEFT)
      {
        playerX1 -= player1Speed;
      }
      if(keyCode == RIGHT)
      {
        playerX1 += player1Speed;
      }
      if(playerX1 - player1Width / 2 < 0)
      {
        player1Speed = 0;
        playerX1 = player1Width / 2;
      }
      if(playerX1 + player1Width / 2 > displayWidth)
      {
        player1Speed = 0;
        playerX1 = displayWidth - 65;
      }
    }
  }
  
  void render() //Visualistion
  {
    rectMode(CENTER);
    rect(playerX1, playerY1, player1Width, player1Height);
  }
  
  
  
  
}