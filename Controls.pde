void keyPressed()
{
  if(keyCode == LEFT)
  {
    keys[0] = true;
  }
  if(keyCode == RIGHT)
  {
    keys[1] = true;
  }
  if(key == 'a')
  {
    keys[2] = true;
  }
  if(key == 'd')
  {
    keys[3] = true;
  }
  if(key == 'p')
  {
    keys[4] = true;
  }
}

void keyReleased()
{
  if(keyCode == LEFT)
  {
    keys[0] = false;
  }
    if(keyCode == RIGHT)
  {
    keys[1] = false;
  }
  if(key == 'a')
  {
    keys[2] = false;
  }
  if(key == 'd')
  {
    keys[3] = false;
  }
  if(key == 'p')
  {
    keys[4] = false;
  }
}