void setup()
{
	size(400,500);
  noLoop();
}
void draw()
{
  background(200);
	int total = 0;
    fill(255);
    for(int y=0; y<400; y+=50) {
        for(int x=0; x<400; x+=50) 
       {
         Die lol = new Die(x,y);
         lol.roll();
         total+=lol.randomNum;
         lol.show();
       }
}
fill(255);
textSize(50);
text(total,200,450);
}

void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	int myX, myY, randomNum;
	Die(int x, int y) //constructor
	{
		myX = x;
    myY = y;
        randomNum = (int)(Math.random()*6)+1;

	}
	void roll()
	{
	}
	void show()
	{
		 stroke(255);
        fill(50,80,0);
        rect(myX, myY, 50, 50);
        fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        if (randomNum ==1 ) {
            ellipse(myX+25, myY+25, 13, 13);
        }
        else if(randomNum ==2) {
            ellipse(myX+10, myY+10, 13, 13);
            ellipse(myX+40, myY+40, 13, 13);
        } 
        else if(randomNum == 3) {
            ellipse(myX+10 , myY+10, 13, 13);
            ellipse(myX+25 , myY+25, 13, 13);
            ellipse(myX+40 , myY+40, 13, 13);
        }
        else if(randomNum ==4) {
            ellipse(myX+10, myY+10, 13, 13);
            ellipse(myX+10, myY+40, 13, 13);
            ellipse(myX+40, myY+10, 13, 13);
            ellipse(myX+40, myY+40, 13, 13);
        }
        else if(randomNum == 5) {
            ellipse(myX+25, myY+25, 13, 13);
            ellipse(myX+10, myY+10, 13, 13);
            ellipse(myX+10, myY+40, 13, 13);
            ellipse(myX+40, myY+10, 13, 13);
            ellipse(myX+40, myY+40, 13, 13);
        }
        else if(randomNum ==6 ) {
            ellipse(myX+10, myY+10, 13, 13);
            ellipse(myX+10, myY+25, 13, 13);
            ellipse(myX+10, myY+40, 13, 13);
            ellipse(myX+40, myY+10, 13, 13);
            ellipse(myX+40, myY+25, 13, 13);
            ellipse(myX+40, myY+40, 13, 13);
        }

}
	}