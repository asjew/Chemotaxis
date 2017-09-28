Bacteria[] rain; 
int snowLevel = 70; 
 void setup()   
 {     
 	size(500, 500);
 	frameRate(3);
 	rain = new Bacteria[100];
 	for(int i = 0; i < rain.length; i++)
 	{
 		rain[i] = new Bacteria();
 	}
 }  
 void draw()   
 {    
 	background(212);
 	fill(255);
	noStroke();
 	for(int i = 0; i < rain.length; i++)
 	{
 		rain[i].show();
 		rain[i].move();
 	}
 	rect(0, 500 - snowLevel, 500, snowLevel);
 }  

 class Bacteria    
 {    
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX = 250;
 		myY = 10;
 		myColor = 255;
 	}
 	void move()
 	{
 		myX = myX + (int)(Math.random()*200)-100;
		myY = myY + (int)(Math.random()*10)+30;
	 	if(mousePressed == true)
	 	{
	 		myX = 250;
	 		myY = 10;
	 		redraw();
	 	}
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX, myY, 15, 15);
 	}
 }
    