int stage;
PFont title;
float w, halfW;
float playerWidth, playerHeight;
PImage background;
Player2 player2;
Player1 player1;
Ball ball;

void setup()
{
  size(displayWidth, displayHeight);
  stage = 1;
  player1 = new Player1();
  player2 = new Player2();
  ball = new ball();
  background = loadImage("pongbackground.jpg");
    
}

void draw()
{
  background(0);
  
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
    ball();
    player1.update();
    player1.render();
    player2.update();
    player2.render();
    ball.update();
    ball.render();
  }
}