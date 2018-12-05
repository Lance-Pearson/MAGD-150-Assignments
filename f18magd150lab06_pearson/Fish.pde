class Fish{
  float centerX, centerY, tailA, tailB, speedX, speedY, dirX, dirY,eyeA,eyeB;
  color fill;
  
  Fish(){
    centerX = round(random(0,width));
    centerY = round(random(0,height));
    tailA = 100;
    tailB = 60;
    speedX = random(3, 1);
    speedY = random(3, 1);
    eyeA= 40;
    eyeB= 20;
    
    float theta = random(TWO_PI);  //borrowed from lesson_6D, a few things were borrowed throughout this code
    dirX = cos(theta);
    dirY = sin(theta);
    
    fill = color(random(50,250),random(50,250),random(50,250));
  }  
  

  
  //fish shape consisting of an eye ellipse, body ellipse, and triangle fin
  void show(){
    noStroke();
    fill(fill);
    ellipse(centerX, centerY, 150, 100);
    triangle(centerX, centerY, centerX-tailA, centerY-tailB,centerX-tailA, centerY+tailB);
    fill(0);
    ellipse(centerX+eyeA, centerY-eyeB, 20,20);
  }
  
  void swim(){
    centerX += speedX * dirX;
    centerY += speedY * dirY;
    
    //swaps both direction and the way the fish is facing
    if(centerX < 0 || centerX >width){
      dirX *= -1;
      tailA *= -1;
      tailB *= -1;
      eyeA *= -1;
      
    }
    if(centerY < 0 || centerY > height){
      dirY *= -1;
    }
  }
}
