void setup()
{
  size(500, 480);
  noLoop();
  textAlign(CENTER);
  textSize(20);
}
int count = 0;
int target = ((int)(Math.random() * 50) + 225);
void draw()
{
  background(0);//your code here
  for(int y = 30; y < 200; y = y + 50) {
    for(int x = 40; x < 470; x = x + 50) {
      Die bob = new Die(x, y);
      bob.roll();
      bob.show();
    }
  }
  for(int y = 280; y < 470; y = y + 50) {
    for(int x = 40; x < 470; x = x + 50) {
      Die bob = new Die(x, y);
      bob.roll();
      bob.show();
    }
  }
  fill(255);
  text("Your total is: " + count + " ... Your target is: " + target, 250, 240);
  if (count == target) {
    text("You Win!", 250, 265);
    target = ((int)(Math.random() * 50) + 225);
  }return;
}
void mousePressed()
{
  count = 0;
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int x;
  int y;
  int value;
  Die(int myX, int myY) //constructor
  {
    x = myX;
    y = myY;//variable initializations here
  }
  void roll()
  {
    value = (int)(Math.random()*6)+1;//your code here
  }
  void show()
  {
    fill((int)(Math.random()*100)+ 156,(int)(Math.random()*100)+ 156,(int)(Math.random()*100)+ 156);
    rect(x, y, 20, 20);
    fill(0);
    if (value == 1) {
      ellipse(x + 10, y + 10, 3, 3);
      count = count + 1;
    }else
    if (value == 2) {
      ellipse(x + 15, y + 5, 3, 3);
      ellipse(x + 5, y + 15, 3, 3);
      count = count + 2;
    }else
    if (value == 3) {
      ellipse(x + 16, y + 4, 3, 3);
      ellipse(x + 10, y + 10, 3, 3);
      ellipse(x + 4, y + 16, 3, 3);
      count = count + 3;
    }else
    if (value == 4) {
      ellipse(x + 6, y + 6, 3, 3);
      ellipse(x + 14, y + 6, 3, 3);
      ellipse(x + 6, y + 14, 3, 3);
      ellipse(x + 14, y + 14, 3, 3);
      count = count + 4;
    }else
    if (value == 5) {
      ellipse(x + 4, y + 4, 3, 3);
      ellipse(x + 16, y + 4, 3, 3);
      ellipse(x + 10, y + 10, 3, 3);
      ellipse(x + 4, y + 16, 3, 3);
      ellipse(x + 16, y + 16, 3, 3);
      count = count + 5;
    }else
    if (value == 6) {
      ellipse(x + 6, y + 5, 3, 3);
      ellipse(x + 6, y + 10, 3, 3);
      ellipse(x + 6, y + 15, 3, 3);
      ellipse(x + 14, y + 5, 3, 3);
      ellipse(x + 14, y + 10, 3, 3);
      ellipse(x + 14, y + 15, 3, 3);
      count = count + 6;
    }return;
  }
}
