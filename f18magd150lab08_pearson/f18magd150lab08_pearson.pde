import processing.pdf.*;

bandit b;
String[] lines;
String poster;
String file = "slogan.txt";
PFont cowboys;
PFont whale;
int count;
float gray, flip;
boolean swap = false;
boolean pdf;

void setup(){
frameRate(24);
size(600,800);
String[] fontList = PFont.list();
printArray (fontList);
cowboys = createFont("Cowboys.ttf", 50);
whale = createFont("vanilla whale.ttf", 30);
smooth();
b = new bandit();
lines = loadStrings(file);
count = lines.length;
poster = "poster";
}

void draw(){

//begins the record function
if (pdf){
 beginRecord(PDF, poster + ".pdf");
}
background(230,230,205);
//This line of code animates the color of text
if (swap == false){
 gray = gray + 1; 
}
if (gray == 100){
  swap = true;
}
if (swap == true){
  gray = gray -1;
}
if (gray == -1){
 swap = false; 
}
println(gray);

//Wanted poster title
fill(gray);
textFont(cowboys, 80);
textAlign(CENTER, CENTER);
text("WANTED:", width/2, 40);
textFont(cowboys, 40);
text("DEAD OR ALIVE", width/2, 105);

//bar
noStroke();
rectMode(CENTER);
rect(width/2,130, width/1.2, 5);

textFont(whale, 40);
text("THE MOVIE", width/2, 152);

pushStyle();
stroke(0);
strokeWeight(3);
noFill();
rectMode(CENTER);
rect(width/2,height/2,width-150,height-350);
popStyle();

b.display();

//this part of the code loads the .txt and displays each line
  textFont(whale,60);
  text(lines[0], width/2, 650);
  textFont(cowboys,30);
  text(lines[1], width/2, 710);
  textFont(whale,50);
  text(lines[2], width/2, 750);
  
if (pdf){
 endRecord();
 pdf = false;
}
}

//Pressing p will result in making a PDF screenshot
void keyPressed() {
 if (key == 'p'){
   pdf = true; 
 }
}
