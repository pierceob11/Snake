class Player1 
{
  //Field
  float playerX1, playerY1;
  float player1Width, player1Height;
  float player1Speed;
  int P1score;
  
  Player1()
  {
    player1Width = 120.0f;
    player1Height = player1Width * 0.25f;
    playerX1 = displayWidth / 2;
    playerY1 = displayHeight - 50;
    player1Speed = 7.5f;
    P1score = 0;
  }
  
  void update() //What the instance of the class can do
  {
    player1Speed = 7.5f;
    
      if(keys[0]) //Left
      {
        playerX1 -= player1Speed;
      }
      if(keys[1]) //Right 
      {
        playerX1 += player1Speed;
      }
      //Screen barriers
      if(playerX1 < 0)
      {
        player1Speed = 0;
        playerX1 = 5;
      }
      if(playerX1 + player1Width > displayWidth)
      {
        player1Speed = 0;
        playerX1 = displayWidth - (player1Width - 5);
      }
      //Ball to player collision
      if(ball.ballY >= playerY1
      && ball.ballX >= playerX1
      && ball.ballX <= playerX1 + player1Width)
      {
        ball.ballSpeedY = -ball.ballSpeedY;
      }
    }
  
  void render() //Visualistion
  {
    rectMode(CORNER);
    fill(255);
    rect(playerX1, playerY1, player1Width, player1Height); 
    fill(0);
    textSize(32);
    text(P1score, playerX1 + (player1Width / 2), playerY1 + 27);
  } 
}