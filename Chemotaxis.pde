 //declare bacteria variables here  
 Bacteria bob;
 Bacteria sue;
 Bacteria[]colony;

  void setup()   
 {     
 	size(600,600);
 	bob = new Bacteria(250,250);
 	sue = new Bacteria(150,150);
 	colony = new Bacteria[8];

 	for(int i=0;i<colony.length;i++)
 	{
 		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 		colony[i]=new Bacteria((int)(Math.random()*600),(int)(Math.random()*600));
 		colony[i].walk();
 		colony[i].show();
 	}
 } 

 void draw()   
 {    
 	fill(255,255,0);
 	bob.walk();
 	bob.show();
 		for(int i=0;i<colony.length;i++)
 	{
 		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		colony[i].walk();
 		colony[i].show();
 	}
 	fill(200,200,0);
 	sue.show();
 	sue.walk();

 }  
 
 void mousePressed()
 {
 	background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 	fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 	int eX=(int)(Math.random()*600);
	int eY=(int)(Math.random()*600);
 	ellipse(eX,eY,30,30);
 	for(int i=0;i<colony.length;i++)
 	{
 		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
 		colony[i]=new Bacteria((int)(Math.random()*600),(int)(Math.random()*600));
 		colony[i].walk();
 		colony[i].show();
 	}

 }
 
 class Bacteria
 {     
 	int myX;
 	int myY;
 	Bacteria(int x, int y)   
 	{
 		walk();
 		myX=x;
 		myY=y;
 	}

 void walk()
 {
 	myX=myX+(int)(Math.random()*3)-1;
 	myY=myY+(int)(Math.random()*3)-1;
 }
 void show()
 {
 	//fill(255,255,0);
 	ellipse(myX,myY,10,10);
 }
}