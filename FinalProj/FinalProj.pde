// KJ Sweet
// CS 382 Final Project
// 2/16/16
// All work is mine unless otherwise cited
//
// This character creator is designed to by gender neutral.
// Click the arrows to explore!

PFont title, head;
int outfit, hair, skin, hair_CLR;


void setup() {
  size(800,600);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  
  title = loadFont("Purisa-Bold-48.vlw");
  head = loadFont("Purisa-48.vlw");
  outfit = 0;
  hair = 0;
  skin = 0;
  hair_CLR = 0;
}//setup

void draw() {
  background(165, 50, 92);
  
  //text
  textFont(title);
  textSize(32);
  fill(237, 87, 83);
  text("MEA CREATOR", 475, 50);
  
  //draw body
  pushMatrix();
  translate(240, 120);
  
  //long hair long story
  if(hair == 0) {
    if(hair_CLR == 0) {
      fill(36, 98, 99);
    }//light
    if(hair_CLR == 1) {
      fill(3, 58, 10);
    }//dark
    ellipse(0, 20, 200, 200);
  }//long
  
  if(hair == 2) {
    if(hair_CLR == 0) {
      fill(36, 98, 99);
    }//light
    if(hair_CLR == 1) {
      fill(3, 58, 10);
    }//dark
    ellipse(0, 0, 150, 150);
  }//hijab
  
  //arms
  //skin
  if(skin == 0) {
    fill(36, 78, 22);
  }//dark
  
  if(skin == 1) {
    fill(34, 61, 75);
  }//light
  
  pushMatrix();
  rotate(PI/12);
  translate(40, 0);
  ellipse(-50, 140, 75, 150);
  popMatrix();
  
  pushMatrix();
  rotate(-PI/12);
  translate(-40,0);
  ellipse(50, 140, 75, 150);
  popMatrix();
  
  //not arms
  
  //skin
  if(skin == 0) {
    fill(36, 80, 27);
  }//dark
  
  if(skin == 1) {
    fill(34, 63, 81);
  }//light
  arc(0, 240, 150, 400, PI, TWO_PI); //body
  
  //legs
  //skin
  if(skin == 0) {
    fill(36, 78, 22);
  }//dark
  
  if(skin == 1) {
    fill(34, 61, 75);
  }//light
  arc(0, 240, 150, 400, 0, PI);//legs
  fill(165, 50, 92); //background color
  rect(-1, 280, 2, 160);//gap
  
  //Outfit
  if(outfit == 0) {
    fill(317, 43, 78);
    arc(0, 240, 150, 400, PI, TWO_PI);
    fill(330, 43, 78);
    beginShape();
    vertex(-75, 225);
    vertex(75, 225);
    vertex(100, 325);
    vertex(-100, 325);
    endShape(CLOSE);
  }//Dress
  
  if(outfit == 1) {
    fill(248, 16, 74);
    arc(0, 240, 150, 400, 3.5, 5.93);
    fill(231, 65, 23);
    beginShape();
    vertex(-75, 210);
    vertex(75, 210);
    vertex(83, 250);
    vertex(72, 300);
    vertex(-72, 300);
    vertex(-83, 250);
    endShape(CLOSE);
    fill(165, 50, 92);//background color for gap
    rect(-1, 260, 2, 160);//gap
  }//pants
  
  //more hijab
  //over clothes, "under head" 
  if(hair == 2) {
    if(hair_CLR == 0) {
      fill(36, 98, 99);
    }//light
    if(hair_CLR == 1) {
      fill(3, 58, 10);
    }//dark
    arc(0, 112, 162, 140, PI, TWO_PI);
  }//hijab
  
  //head (over clothes, under hair/face) 
  //skin
  if(skin == 0) {
    fill(36, 80, 27);
  }//dark
  
  if(skin == 1) {
    fill(34, 63, 81);
  }//light
  ellipse(0, 0, 100, 100); //head
  
  //hair
  if(hair_CLR == 0) {
    fill(36, 98, 99);
  }//light
  if(hair_CLR == 1) {
    fill(3, 58, 10);
  }//dark
  
  if(hair == 0) {
    rotate(PI/4);
    ellipse(-37, 0, 30, 70);
    rotate(-PI/2);
    ellipse(37, -3, 30, 70);
  }//long
  
  if(hair == 1) {
    beginShape();
    vertex(-10, -65);
    vertex(10, -65);
    vertex(30, -10);
    vertex(-5, -10);
    endShape(CLOSE);
  }//short
  
  popMatrix();
  
  //draw arrows
  pushMatrix();
  fill(237, 87, 83);
  for(int i = 1; i < 5; i++) {
    triangle(60, 120*i, 100, (120*i)-20, 100, (120*i)+20);
    triangle(420, 120*i, 380, (120*i)-20, 380, (120*i)+20);
  }//forTri
  popMatrix();
  
  //Directions
  pushMatrix();
  translate(450,0);
  textFont(head);
  textSize(20);
  text("Mea can't decide on their look", 0, 150);
  text("for today.", 50, 200);
  text("Click the arrows <> to explore.", 0, 250);
  text("Remember: You Rule!", 0, 300);
  popMatrix();
}//draw

void mousePressed() {
  if(mouseX <= 100 && mouseX >= 60 && mouseY <= 140 && mouseY >= 100) {
    if(hair > 0) {
      hair -= 1;
    }//check num
    else {
      hair = 0;
    }//end at 0
  }//hair
  if(mouseX <= 420 && mouseX >= 380 && mouseY <= 140 && mouseY >= 100) {
    if(hair < 2) {
      hair += 1;
    }//check max hair
    else {
      hair = 2;
    }//end at max hair
  }//hair
  
  if(mouseX <= 100 && mouseX >= 60 && mouseY <= 260 && mouseY >= 220) {
    if(hair_CLR > 0) {
      hair_CLR -= 1;
    }//check num
    else {
      hair_CLR = 0;
    }//end at 0
  }//hair_CLR
  if(mouseX <= 420 && mouseX >= 380 && mouseY <= 260 && mouseY >= 220) {
    if(hair_CLR < 1) {
      hair_CLR += 1;
    }//check max hair_CLR
    else {
      hair_CLR = 1;
    }//end at max hair_CLR
  }//hair_CLR
  
  if(mouseX <= 100 && mouseX >= 60 && mouseY <= 380 && mouseY >= 340) {
    if(outfit > 0) {
      outfit -= 1;
    }//check num
    else {
      outfit = 0;
    }//end at 0
  }//outfit
  if(mouseX <= 420 && mouseX >= 380 && mouseY <= 380 && mouseY >= 340) {
    if(outfit < 1) {
      outfit += 1;
    }//check max outfit
    else {
      outfit = 1;
    }//end at max outfit
  }//outfit
  
  if(mouseX <= 100 && mouseX >= 60 && mouseY <= 500 && mouseY >= 460) {
    if(skin > 0) {
      skin -= 1;
    }//check num
    else {
      skin = 0;
    }//end at 0
  }//skin
  if(mouseX <= 420 && mouseX >= 380 && mouseY <= 500 && mouseY >= 460) {
    if(skin < 1) {
      skin += 1;
    }//check max skin
    else {
      skin = 1;
    }//end at max skin
  }//skin
}//mousePressed