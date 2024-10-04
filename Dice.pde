  void setup()
  {
      noLoop();
      size(500,500);
      strokeWeight(1);
  }
  void draw()
  {
      int total=0;
      background(100,40,50);
      int a=0;
      int b=0;
      for(a=0;a<=400;a+=100){
        for(b=0;b<=300;b+=100){
          Die die=new Die(a,b);
          die.roll();
          die.show();
          total=total+die.myRoll;
        }
      }
      noStroke();
      fill(100,40,50);
      rect(160,465,100,100);
      fill(255,255,255);
      textSize(50);
      text("Total: "+total,160,465);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX,myY,myRoll,total;
      Die(int x, int y) //constructor
      {
          myX=x;
          myY=y;
          myRoll=0;
      }
      void roll()
      {
          myRoll=(int)(Math.random()*6)+1;
      }
      void show()
      {
          stroke(1);
          fill(255,255,240);
          rect(myX,myY,100,100);
          fill(0,0,0);
          if(myRoll==1){
            ellipse(myX+50,myY+50,20,20);
          }
          else if(myRoll==2){
            ellipse(myX+25,myY+25,20,20);
            ellipse(myX+75,myY+75,20,20);
          }
          else if(myRoll==3){
            ellipse(myX+25,myY+25,20,20);
            ellipse(myX+50,myY+50,20,20);
            ellipse(myX+75,myY+75,20,20);
          }
          else if(myRoll==4){
            ellipse(myX+25,myY+25,20,20);
            ellipse(myX+25,myY+75,20,20);
            ellipse(myX+75,myY+25,20,20);
            ellipse(myX+75,myY+75,20,20);
          }
          else if(myRoll==5){
            ellipse(myX+25,myY+25,20,20);
            ellipse(myX+25,myY+75,20,20);
            ellipse(myX+75,myY+25,20,20);
            ellipse(myX+75,myY+75,20,20);
            ellipse(myX+50,myY+50,20,20);
          }
          else{
            ellipse(myX+25,myY+25,20,20);
            ellipse(myX+25,myY+50,20,20);
            ellipse(myX+25,myY+75,20,20);
            ellipse(myX+75,myY+25,20,20);
            ellipse(myX+75,myY+50,20,20);
            ellipse(myX+75,myY+75,20,20);
          }
      }
  }
