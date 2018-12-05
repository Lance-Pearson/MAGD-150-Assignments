float x, y, z;
void setup(){
  size(500,500,P3D);
  
  x = 250;
  y = 250;
  z = -500;
}
void draw(){
  PImage texture = loadImage("texture.jpg");
  background(25);
  ambientLight(130,130,130);  
  pointLight(255,140,60,width/2,0,z);
  directionalLight(x,y,0,255,20,20);
  
  pushMatrix();
  translate(x,y,z);
  noStroke();
  sphere(100);
  popMatrix();
  
  //Box that acts as a room to the sketch
  pushMatrix();
  translate(x+20,y-100,0);
  rotateY(QUARTER_PI);
  box(2500);
  popMatrix();
  
  //3D mesh cube textured with smily faces and a hole revealing the sphere in the center.
  pushMatrix();
  translate(x,y,z);
  scale((min(width,height)/2));
  pushStyle();
  fill(0,0,160);
  beginShape();
    vertex(-1,-1,1);
    vertex(1,-1,1);
    vertex(1,1,1);
    vertex(-1,1,1);
  beginContour();
    vertex(0,-1,1);
    vertex(-1,0,1);
    vertex(0,1,1);
    vertex(1,0,1);
  endContour();
  endShape();
  popStyle(); 
  
  beginShape();
  texture(texture);
    vertex(1, -1, 1,0,0);
    vertex(1, -1, -1,500,0);
    vertex(1, 1, -1,500,500);
    vertex(1, 1, 1,0,500);
  endShape();
  
  beginShape();
  texture(texture);
    vertex(-1, -1, -1,0,0);
    vertex(-1, -1, 1,500,0);
    vertex(-1, 1, 1,500,500);
    vertex(-1, 1, -1,0,500);
  endShape();

  beginShape();
  texture(texture);
    vertex(-1, 1, 1,0,0);
    vertex(1, 1, 1,500,0);
    vertex(1, 1, -1,500,500);
    vertex(-1, 1, -1,0,500);
  endShape();
  
  beginShape();
  texture(texture);
    vertex(1, -1, -1,0,0);
    vertex(-1, -1, -1,500,0);
    vertex(-1, 1, -1,500,500);
    vertex(1, 1, -1,0,500);
  endShape();
  
  beginShape();
  texture(texture);
    vertex(-1, -1, -1,0,0);
    vertex(1, -1, -1,500,0);
    vertex(1, -1, 1,500,500);
    vertex(-1, -1, 1,0,500);
  endShape();
  popMatrix();
  
  //Rotates the camera (I couldn't figure out how to make the sphere the exact center of rotation)
  float theta = map(mouseX, 0, width, 0, TWO_PI);
  beginCamera();
  camera(250,250,900,x,y,z,0,1,0);
  rotateY(theta);
  endCamera();
}
