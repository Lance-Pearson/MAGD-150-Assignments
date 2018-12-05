import processing.video.*;

import processing.sound.*;

PImage cat;
float r, g, b;

Movie lion;
SoundFile meow;
SoundFile commentary;
Reverb reverb;
void setup(){
  noCursor();
  size(1280, 720);                    //The royalty free lion video in use.
  lion = new Movie(this, "lion.mp4"); //https://www.youtube.com/watch?v=G5t8ixtIr68
  lion.loop();                        //The clipart cat I used for the cursor.
  cat = loadImage("cat.png");         //https://pngtree.com/freepng/cat-drilled_1514036.html
  commentary = new SoundFile(this, "commentary.wav");
  commentary.loop();
  meow = new SoundFile(this, "meow.wav");
  reverb = new Reverb(this);

}
void movieEvent (Movie lion){
  lion.read();
}
void draw(){
  imageMode(CORNER);
  image(lion,0,0);
  imageMode(CENTER);
  cat.resize(150,150);
  image(cat, mouseX, mouseY);
  
}
//Clicking the mouse changes the colors of the sketch and says meow; spam for strobe light effect.
void mousePressed(){
  r = random(255);
  g = random(255);
  b = random(255);
  tint(r,g,b);
  
  meow.play();
  reverb.process(meow); //This sometimes reverberates the meow, but if spammed, the sketch won't load it while it's already processing the previous effect.
}
