Bacteria[] rain;  
 void setup()   
 {     
 	size(500, 500);
 	frameRate(4);
 	rain = new Bacteria[90];
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
	rect(0, 450, 500, 50);
 	for(int i = 0; i < rain.length; i++)
 	{
 		rain[i].show();
 		rain[i].move();
 	}  
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
	 	if(myY > 505)
	 	{
	 		fill(255);
	 		noStroke();
	 		rect(0, 450, 500, 70);
	 	}
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX, myY, 21, 21);
 	}
 }
    