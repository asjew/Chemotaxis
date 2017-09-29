Bacteria[] snow; 
int snowLevel = 70;
boolean snowFalling = true;
 void setup()   
 {     
   size(500, 500);
   frameRate(30);
   snow = new Bacteria[100];
   for(int i = 0; i < snow.length; i++)
   {
     snow[i] = new Bacteria(i);
   }
 }  
 void draw()   
 {    
   background(212);
   fill(255);
  noStroke();
   if(mousePressed == true)
   {
     if (!snowFalling) {
       snowFalling = true;
       for (int i = 0; i < snow.length; i++) {
         snow[i].myX = snow[i].originalX;
         snow[i].myY = 10;
       }
     }
   }
   for(int i = 0; i < snow.length; i++)
   {
     snow[i].show();
     snow[i].move();
     if (snowFalling && snow[0].myY > 500 - snowLevel) {
       snowLevel += 10;
       snowFalling = false;
     }
   }
   rect(0, 500 - snowLevel, 500, snowLevel);
 }  

 class Bacteria    
 {    
   int myX, myY, myColor, originalX;
   Bacteria(int i)
   {
     originalX = i * 5;
     myX = originalX;
     myY = 10;
     myColor = 255;
   }
   void move()
   {
     myX = myX + (int)(Math.random()*10)-5;
    myY = myY + (int)(Math.random()*10)+2;
   }
   void show()
   {
     fill(myColor);
     ellipse(myX, myY, 15, 15);
   }
 }