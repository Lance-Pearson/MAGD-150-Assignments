int tide = 0;
int night = 0;
int suntop = 150;


void setup(){
  size(1800,1000);
  smooth();
  frameRate(40);
}

void draw(){
  background(75,125,250);
  noStroke();
  rectMode(CENTER);
  fill(230,215,170);
  rect(900,950,width,300);
  
  
  
  
  //stupid tide
  tide = (tide + 1) % width;
  
  fill(230,215,170);
  ellipse(tide,800,150,100);
  fill(75,125,250);
  ellipse(tide + 150,800,150,100);
  fill(230,215,170);
  ellipse(tide + 300,800,150,100);
  fill(75,125,250);
  ellipse(tide + 450,800,150,100);
  fill(230,215,170);
  ellipse(tide + 600,800,150,100);
  fill(75,125,250);
  ellipse(tide + 750,800,150,100);
  fill(230,215,170);
  ellipse(tide + 900,800,150,100);
  fill(75,125,250);
  ellipse(tide + 1050,800,150,100);
  fill(230,215,170);
  ellipse(tide + 1200,800,150,100);
  fill(75,125,250);
  ellipse(tide + 1350,800,150,100);
  fill(230,215,170);
  ellipse(tide + 1500,800,150,100);
  fill(75,125,250);
  ellipse(tide + 1650,800,150,100);
  fill(230,215,170);
  ellipse(tide + 1800,800,150,100);
  fill(75,125,250);
  ellipse(tide + 1950,800,150,100);
  
  ellipse(tide - 150,800,150,100);
  fill(230,215,170);
  ellipse(tide - 300,800,150,100);
  fill(75,125,250);
  ellipse(tide - 450,800,150,100);
  fill(230,215,170);
  ellipse(tide - 600,800,150,100);
  fill(75,125,250);
  ellipse(tide - 750,800,150,100);
  fill(230,215,170);
  ellipse(tide - 900,800,150,100);
  fill(75,125,250);
  ellipse(tide - 1050,800,150,100);
  fill(230,215,170);
  ellipse(tide - 1200,800,150,100);
  fill(75,125,250);
  ellipse(tide - 1350,800,150,100);
  fill(230,215,170);
  ellipse(tide - 1500,800,150,100);
  fill(75,125,250);
  ellipse(tide - 1650,800,150,100);
  fill(230,215,170);
  ellipse(tide - 1800,800,150,100);
  fill(75,125,250);
  ellipse(tide - 1950,800,150,100);
  
  //sky
  fill(130,180,250);
  rect(width/2,250, width,height/2);
  
  // day/night cycle
    //sky
  fill(0,0,0,night);
  rect(width/2,height/2,width,height);
    //sun
  fill(253, 184, 19);
  ellipse(width/2, suntop, 150,150);
    //box to hide sun 
  fill(75,125,250);
  rect(width/2, (height/2)+100, 150,200);
  fill(0,0,0,night);
  rect(width/2, (height/2)+100, 150,200);
  fill(255,255,255,night);
  ellipse(200,200, 150, 150);
    //moon
  fill(130,180,250);
  ellipse(230,190, 150, 150);
  fill(0,0,0,night);
  ellipse(230,190, 150, 150);
  
  //console
  println("Press the mouse to change time.");
  println("Type any key to reset time");
  println("Day = 0, night = 220");
  println("Time: " + night + " ");
  

  
  if (mousePressed == true) {
    night = (night + 5) % 230;
    suntop = (suntop + 10) % 610;
  } else{
  }
  
  if (suntop == 0) {
    suntop = (suntop + 150);
  } else{ 
  }
  
  while (night > 224) {
   textSize(30);
   fill(255,255,255);
   text("Hi", 1700, 50);
   night--;
   
  }
   if (night == 224){
     suntop = 150;
    night = 0;
   }
}    
    
void keyPressed(){
  suntop = 150;
  night = 0;
}
  
