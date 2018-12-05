//Fish fishy1;
Fish[] fishy2;
int count;

void setup(){ 
  surface.setTitle("Fishy Screensaver"); //Just a cute title for the window
  background(60,60,230);
  size(1920,1080);
  //fishy1 = new Fish();
  
  //Stolen from lesson_6D
  count = max(width, height) / 100;
  fishy2 = new Fish[count];
  for(int i=0; i<count; ++i){
    fishy2[i] = new Fish();
  }
  
  }
  
void draw(){
  background(60,60,230);
  hook();

  //fishy1.show();
  //fishy1.swim();
  for(int i=0; i<count; ++i){
    fishy2[i].show();
    fishy2[i].swim();
  }
  
  line(mouseX,mouseY,mouseX,mouseY+50);
}

//pressing the mouse casts a fishing line and you can just move it around but nothing else
void hook() {
  
  if (mousePressed){
    stroke(1);
    strokeWeight(2);
    line(width/2,0, mouseX,mouseY);
    noStroke();
    rectMode(CENTER);
    fill(100);
    rect(mouseX-5,mouseY+30,10,60);
    quad(mouseX,mouseY+60,mouseX-10,mouseY+60,mouseX-20,mouseY+80,mouseX-20,mouseY+100);
    quad(mouseX-40,mouseY+60,mouseX-30,mouseY+60,mouseX-20,mouseY+80,mouseX-20,mouseY+100);
 
  } 
}
