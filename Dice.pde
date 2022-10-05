void setup()
  {
    size(500,500);
    noLoop();
  }
  void draw()
  {
    background(0);
    int sum = 0;
    for(int y = 85; y <= 500; y += 85)
        {
          for(int x = 85; x <= 500; x += 85)
          {
          Die bob = new Die(x, y);
          sum += bob.diceCount;
          bob.show() ;
          }
        }        
    if (Math.random()*1 <= 0.5)
            fill (0, 128, 128);
         else 
            fill (32, 87, 110);
    rectMode(CENTER);
    rect(250,20,460,30);
    fill (255);
    text("Sum: " + sum, 240, 20);   
    
  }
  
  void mousePressed()
  {
      redraw() ;
  }
  class Die //models one single Die cube
  {
      int diceCount, myX, myY; //member variable declarations here
      Die(int x, int y) //constructor
      {
       //variable initializations here
        diceCount = (int)((Math.random()*6)+1);
        myX = x;
        myY = y ;
    
      }
      void roll()
      {
        diceCount = (int)((Math.random()*6)+1);
      }
      void show()
      {
         if (Math.random()*1 <= 0.5)
            fill (0, 128, 128);
         else 
            fill (32, 87, 110);
            

          rectMode(CENTER);
          rect (myX,myY,80,80);
          fill (0);
          
          if (diceCount == 1) 
            ellipse (myX,myY,15,15);
          if (diceCount == 2){
            ellipse (myX+20,myY+20,15,15);
            ellipse (myX-20,myY-20,15,15); }
          if (diceCount == 3){
            ellipse (myX,myY,15,15);
            ellipse (myX+20,myY+20,15,15);
            ellipse (myX-20,myY-20,15,15); }
          if (diceCount == 4) {
            ellipse (myX+20,myY+20,15,15);
            ellipse (myX-20,myY-20,15,15);
            ellipse (myX-20,myY+20,15,15);
            ellipse (myX+20,myY-20,15,15); }
          if (diceCount == 5) {
            ellipse (myX+20,myY+20,15,15);
            ellipse (myX-20,myY-20,15,15);
            ellipse (myX-20,myY+20,15,15);
            ellipse (myX+20,myY-20,15,15); 
            ellipse (myX,myY,15,15); }
          if (diceCount == 6) {
            ellipse (myX+20,myY+20,15,15);
            ellipse (myX-20,myY-20,15,15);
            ellipse (myX-20,myY+20,15,15);
            ellipse (myX+20,myY-20,15,15);
            ellipse (myX-20,myY,15,15);
            ellipse (myX+20,myY,15,15); }

          
      }

      }
  


