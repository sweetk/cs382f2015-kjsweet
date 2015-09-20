ArrayList<People> allPeople = new ArrayList<People>();
float rot = 0;

void setup () {
  size(700, 500);
  
  for(int i = 0; i<10; i++) {
    allPeople.add(new People(random(5,25), random(2,3), random(490)));
  }//creates people
}//setup

void draw() {
  background(167, 227, 242);
    
  pushMatrix();
  
  //draw Castle
  stroke(100);
  fill(200);
  
  translate(75, 150);
  triangle(0, 0, 75, 0, 38, -60);
  rect(0, 0, 75, 250);
  translate(75, 50);
  rect(0, 0, 200, 200);
  
  for(int i = 10; i<=170; i+=40) {
    rect(i, -20, 20, 20);
  }//for archers
  
  translate(200, -50);
  rect(0, 0, 75, 250);
  triangle(0, 0, 75, 0, 38, -60);
  
  popMatrix();
  
  pushMatrix();
  
  //draw door
  fill(100);
  translate(200, 300);
  rect(0, 0, 100, 100);
  translate(50, 0);
  arc(0, 0, 100, 50, PI, 2*PI);
  
  //draw grass
  stroke(73, 211, 106);
  fill(73, 211, 106);
  translate(-250, 100);
  rect(0, 0, 700, 100);
  
  popMatrix();
  
  //draw people
  for(int j = 0; j<10; j++) {
    allPeople.get(j).draws();
    allPeople.get(j).move();
  }//calls class
  
  //draw and rotate sun
  pushMatrix();
  
  fill(255, 226, 59);
  stroke(255, 200, 59);
  translate(625, 75);
  rotate(rot); //it's really hot
  ellipse(0, 0, 70, 80);
  rot++;
  
  popMatrix();
  
  //draw DRAGON
  stroke(237, 105, 43);
  fill(255, 166, 49);
  
  pushMatrix();

  if(mousePressed) {
    scale(2); //make dragon large on click
  }//mouse press
  
  translate(mouseX, mouseY);
  beginShape();
    vertex(0-20, 0); 
    vertex(0-50, 0+30); 
    vertex(0-85, 0); 
    vertex(0-105, 0+20); 
    vertex(0-120, 0+10);
    vertex(0-150, 0+40);
    vertex(0-130, 0-20);
    vertex(0-75, 0-30); 
    vertex(0-60, 0-25); 
    vertex(0-20, 0-10); 
    vertex(0-5, 0-20); 
    vertex(0-5, 0-40);
    vertex(0+5, 0-40);
    vertex(0+5, 0-35);
    vertex(0+20, 0-40);
    vertex(0+20, 0-30);
    vertex(0+10, 0-30);
    vertex(0+20, 0-20);
    vertex(0+20, 0-15);
    vertex(0+10, 0-20);
    vertex(0+10, 0-10);
    vertex(0+20, 0-10);
    vertex(0+60, 0-25);
    vertex(0+75, 0-30);
    vertex(0+130, 0-20);
    vertex(0+150, 0+40);
    vertex(0+120, 0+10);
    vertex(0+105, 0+20);
    vertex(0+85, 0);
    vertex(0+50, 0+30);
    vertex(0+20, 0);
    vertex(0+20, 0+50);
    vertex(0+35, 0+50);
    vertex(0+35, 0+70);
    vertex(0+25, 0+70);
    vertex(0+25, 0+55);
    vertex(0+20, 0+55);
    vertex(0+25, 0+75);
    vertex(0+50, 0+85);
    vertex(0+85, 0+70);
    vertex(0+100, 0+50);
    vertex(0+95, 0+40);
    vertex(0+110, 0+50);
    vertex(0+90, 0+80);
    vertex(0+40, 0+100);
    vertex(0-15, 0+90);
    vertex(0-20, 0+50);
    vertex(0-35, 0+50);
    vertex(0-35, 0+70);
    vertex(0-25, 0+70);
    vertex(0-25, 0+55);
    vertex(0-20, 0+55);
  endShape(CLOSE);
  
  popMatrix();
}//draw