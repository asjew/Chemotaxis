Bacteria[] rain;  
 void setup()   
 {     
 	size(500, 500);
 	rain = new Bacteria[30];
 	for(int i = 0; i < rain.length; i++)
 	{
 		PLACE VARIABLES
 		// rain[i] = new Bacteria();
 	}
 }  
 void draw()   
 {    
 	background(212);
 	for(int i = 0; i < rain.length; i++)
 	{
 		rain[i].show();
 		rain[i].move();
 	}  
 }  
 class Bacteria    
 {    
 	ADD COLOR?? 
 	// int myX, myY, myColor;
 	// Bacteria(int x, int y, int bColor)
 	// {
 	// 	myX = 0;
 	// 	myY = 10;
 	// 	myColor = bColor;
 	// }
 	void move()
 	{
 		myX = myX + (int)(Math.random()*501);
 		myY = myY + (int)(Math.random()*50)+450;
 	}
 	void show()
 	{
 		fill(255, 0, 0);
 		ellipse(myX, myY, 21, 21);
 	}
 }    