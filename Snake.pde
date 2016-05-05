int stage;
PFont title;
float w, halfW;
PImage background;
Player2 player2;
Player1 player1;
Ball ball;
boolean keys[];
boolean player1wins, player2wins;

void setup()
{
  size(displayWidth, displayHeight);
  stage = 1;
  player1 = new Player1();
  player2 = new Player2();
  ball = new Ball();
  background = loadImage("spaceimage.jpg");
  keys = new boolean[6];
  keys[0] = false; //left
  keys[1] = false; //right
  keys[2] = false;  //a
  keys[3] = false;  //d
  keys[4] = false;  //p
  keys[5] = false;
  player1wins = false;
  player2wins = false;
}

void draw()
{
  background(0);
  image(background, 0, 0);
  //Main Menu
  if(stage == 1)
  {
    title();
    
    if(keyPressed == true)
    {
      stage = 2;
    }
  }
  
  if(stage == 2)
  {
    //Game components
    player1.update();
    player1.render();
    player2.update();
    player2.render();
    ball.update();
    ball.render();
    
    if(player1.P1score >= 2)
    {
      player1wins = true;
    }
    if(player1wins == true)
    {
      textSize(48);
      text("Player 1 wins!", displayWidth / 2, displayHeight / 2);
      text("Press R to restart", displayWidth / 2, (displayHeight / 2) + 50);
      if(keys[5] && player1wins == true)
      {
        stage = 1;
      }
    }
    
    if(player2.P2score >= 2)
    {
      player2wins = true;
    }
    if(player2wins == true)
    {
      textSize(48);
      text("Player 2 wins!", displayWidth / 2, displayHeight / 2);
      text("Press R to restart", displayWidth / 2, (displayHeight / 2) + 50);
      if(keys[5] && player2wins == true)
      {
        stage = 1;
      }
    }
  }
    }