Bacteria[] rain;  
 void setup()   
 {     
 	size(500, 500);
 	rain = new Bacteria[30];
 	for(int i = 0; i < rain.length; i++)
 	{
 		rain[i] = new Bacteria ();
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
 	int myX, myY, myColor;
 	Bacteria()
 	{
 		myX = x;
 		myY = y;
 		myColor = ((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
 	}
 	void show()
 	{
 		fill(myColor);
 		ellipse(myX, myY, 21, 21);
 	}
 	void move()
 	{
 		myX = (int)(Math.random()*501);
 		myY = myY + (int)(Math.random()*50)-450;
 	}
 }    