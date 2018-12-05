void setup(){
  size(500,500);
  background(255);
}
void draw(){
  strokeWeight(5);
  fill(255,255,0);
  ellipse(width/2,height/2,450,450); 
  fill(0);
  ellipse(175,170,50,100);
  ellipse(325,170,50,100);
  noFill();
  strokeWeight(10);
  arc(250,250,300,300,0,PI,OPEN);
  save("texture.jpg");
}
