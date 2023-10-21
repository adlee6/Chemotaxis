Straw bob;
Pearls [] john;

void setup () {
  size(500,500);
  bob = new Straw();
  john = new Pearls[30];
  for(int i = 0; i < john.length; i++)
  john [i] = new Pearls();

}

void draw() {
 background (255);
  stroke(0);
  translate(0,20);
 //lid
 fill(255);
 arc(255,130,230,150,PI,2*PI);
 rect(130,130,250,20,5);
 //cup
 translate(0,50);
 quad(140,100,370,100,355,350,155,350);
 Drink();
  stroke(0);
  arc(255,350,200,100,0,51*PI/50);
  bob.show();
  bob.move();
  resetMatrix();
   for(int i = 0; i < john.length; i++){
  john[i].show();
  john[i].move();
  if(dist(john[i].x,john[i].y,bob.x,(bob.y+400)) < 60) {
  john[i].x=10000000;
  john[i].y=10000000;
  }
  }
}

void Drink() {
  fill(222,193,134);
  quad(142,145,368,145,355,350,155,350); 
  noStroke();
  ellipse(255,350,200,100);
}

class Straw {
  int x, y;
  Straw() {
   x = 245;
   y = -60;
  }
  void show() {
  fill(0);
  rect(x,y,25,420);
  }
  
  void move() {
    if(mouseX > x)
      x += 5;
    else
    x -= 5;
    if (x < 160)
      x += 5;
    if (x > 330)
      x -= 5;
  }
}

class Pearls{
  int x, y, myColor;
  Pearls(){
    x = (int)(Math.random()*50)+260;
    y = (int)(Math.random()*50)+400;
    myColor = color(0,0,0);
  }
  void move(){
    x+=(int)(Math.random()*11)-5;
    y+=(int)(Math.random()*11)-5;
    if(x<160)
    x += 5;
    if(y>445)
    y -= 5;
   if (x > 350)
   x -= 5;
   if (y<320)
   y += 5;
  }
  void show(){
    fill(myColor);
    ellipse(x,y,20,20);
  }
}
