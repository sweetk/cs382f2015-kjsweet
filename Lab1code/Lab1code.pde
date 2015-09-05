float[] people;
float[] red;
float[] green;
float[] blue;
float vpeople[];

void setup () {
  size(700, 500);
  people = new float[10];
  for(int k = 0; k<10; k++) {
    float r = random(490);
    people[k] = r;
  }
  
  vpeople = new float[10];
  for(int i = 0; i<10; i++) {
    vpeople[i] = 1 + (1./(i+1) + .5);
  }
}

void draw() {
  background(167, 227, 242);
  
  //draw grass
  stroke(73, 211, 106);
  fill(73, 211, 106);
  rect(0, 400, 700, 100);
  
  //draw Castle
  stroke(100);
  fill(200);
  rect(75, 150, 75, 250);
  rect(150, 200, 200, 200);
  rect(350, 150, 75, 250);
  triangle(75, 150, 150, 150, 112, 90);
  triangle(350, 150, 425, 150, 387, 90);
  for(int i = 160; i<=330; i+=40) {
    rect(i, 180, 20, 20);
  }
  
  //draw door
  fill(100);
  rect(200, 300, 100, 100);
  arc(250, 300, 100, 50, PI, 2*PI);
  
  //draw People in distress
  for(int j = 0; j < 10; j++) {
    stroke((j+1*.5)*25, 0, (j+1*.5)*20);
    fill((j+1*.5)*25, 0, (j+1*.5)*20);
    rect(people[j], 380, 10, 20);
    
    //draw their HEADS
    stroke(142, 89, 39);
    fill(142, 89, 39);
    rect(people[j], 370, 10, 10);
    
    //make them run
    people[j] += vpeople[j];
    if(people[j] > width) {
      vpeople[j] = -vpeople[j];
      people[j] = width;
    }
    
    if(people[j] < 0) {
      vpeople[j] = -vpeople[j];
      people[j] = 0;
    }
  }
  
  //draw DRAGON
  
  stroke(237, 105, 43);
  fill(255, 166, 49);
  
  beginShape();
    vertex(mouseX-20, mouseY); 
    vertex(mouseX-50, mouseY+30); 
    vertex(mouseX-85, mouseY); 
    vertex(mouseX-105, mouseY+20); 
    vertex(mouseX-120, mouseY+10);
    vertex(mouseX-150, mouseY+40);
    vertex(mouseX-130, mouseY-20);
    vertex(mouseX-75, mouseY-30); 
    vertex(mouseX-60, mouseY-25); 
    vertex(mouseX-20, mouseY-10); 
    vertex(mouseX-5, mouseY-20); 
    vertex(mouseX-5, mouseY-40);
    vertex(mouseX+5, mouseY-40);
    vertex(mouseX+5, mouseY-35);
    vertex(mouseX+20, mouseY-40);
    vertex(mouseX+20, mouseY-30);
    vertex(mouseX+10, mouseY-30);
    vertex(mouseX+20, mouseY-20);
    vertex(mouseX+20, mouseY-15);
    vertex(mouseX+10, mouseY-20);
    vertex(mouseX+10, mouseY-10);
    vertex(mouseX+20, mouseY-10);
    vertex(mouseX+60, mouseY-25);
    vertex(mouseX+75, mouseY-30);
    vertex(mouseX+130, mouseY-20);
    vertex(mouseX+150, mouseY+40);
    vertex(mouseX+120, mouseY+10);
    vertex(mouseX+105, mouseY+20);
    vertex(mouseX+85, mouseY);
    vertex(mouseX+50, mouseY+30);
    vertex(mouseX+20, mouseY);
    vertex(mouseX+20, mouseY+50);
    vertex(mouseX+35, mouseY+50);
    vertex(mouseX+35, mouseY+70);
    vertex(mouseX+25, mouseY+70);
    vertex(mouseX+25, mouseY+55);
    vertex(mouseX+20, mouseY+55);
    vertex(mouseX+25, mouseY+75);
    vertex(mouseX+50, mouseY+85);
    vertex(mouseX+85, mouseY+70);
    vertex(mouseX+100, mouseY+50);
    vertex(mouseX+95, mouseY+40);
    vertex(mouseX+110, mouseY+50);
    vertex(mouseX+90, mouseY+80);
    vertex(mouseX+40, mouseY+100);
    vertex(mouseX-15, mouseY+90);
    vertex(mouseX-20, mouseY+50);
    vertex(mouseX-35, mouseY+50);
    vertex(mouseX-35, mouseY+70);
    vertex(mouseX-25, mouseY+70);
    vertex(mouseX-25, mouseY+55);
    vertex(mouseX-20, mouseY+55);
  endShape(CLOSE);
  
  //Breathe fire on click????
  //no.
}