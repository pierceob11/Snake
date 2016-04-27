class Player2
{
  //Field
  float playerX2, playerY2;
  float player2Width, player2Height;
  float player2Speed;
  int P2score;
  
  Player2()
  {
    player2Width = 120.0f;
    player2Height = player2Width * 0.25f;
    playerX2 = displayWidth / 2;
    playerY2 = displayHeight - 730;
    player2Speed = 7.5f;
    P2score = 0;
  }
  
  void update() //What the instance of the class can do
  {
    player2Speed = 7.5f;
    
      if(keys[2])
      {
        playerX2 -= player2Speed;
      }
      if(keys[3])
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
  
  void render() //Visualistion
  {
    rectMode(CORNER);
    fill(0);
    rect(playerX2, playerY2, player2Width, player2Height);
    fill(255);
    text(P2score, playerX2, playerY2 + 10);
  }
  
  
  
  
}