//Silhouette of criminal made using vectors and scaled to proportion

class bandit{
  bandit(){
    
  }
  
  void display(){
  pushMatrix();
    scale(1.5);
    translate(-100,-75);
  pushStyle();
    fill(0);
    triangle(300,300,200,330,325,250);
    triangle(250,300,400,300,275,250);
    triangle(300,300,340,290,325,250);
    beginShape();
      vertex(300,305);
      vertex(250,320);
      vertex(250,365);
      vertex(300,400);
      vertex(350,365);
      vertex(350,305);
    endShape(CLOSE);
    
    beginShape();
      vertex(300,405);
      vertex(250,370);
      vertex(200,405);
      vertex(200,487);
      vertex(400,487);
      vertex(400,405);
      vertex(350,370); 
    endShape(CLOSE);
    
    pushMatrix();
    scale(1.75);
    translate(-133,-125);
    fill(230,230,205);
    quad(310,320,325,320,330,310,315,310);
    popMatrix();
    
    fill(0);
    ellipse(323,329, 15,15);
    
  popStyle();
  popMatrix();

  }
}
