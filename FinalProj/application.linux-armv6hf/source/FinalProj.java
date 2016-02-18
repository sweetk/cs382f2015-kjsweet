import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class FinalProj extends PApplet {

// KJ Sweet
// CS 382 Final Project
// 2/16/16
// All work is mine unless otherwise cited
//
// This character creator is designed to by gender neutral.
// Click the arrows to explore!

PFont title, head;
boolean outfit, hair, skin, hair_CLR;

public void setup() {
  
  colorMode(HSB, 360, 100, 100);
  noStroke();
  
  title = loadFont("Purisa-Bold-48.vlw");
  head = loadFont("Purisa-48.vlw");
  outfit = false;
  hair = true;
  skin = true;
  hair_CLR = true;
}//setup

public void draw() {
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
  if(hair == true) {
    if(hair_CLR == true) {
      fill(36, 98, 99);
    }//light
    if(hair_CLR == false) {
      fill(3, 58, 10);
    }//dark
    ellipse(0, 20, 200, 200);
  }//srry
  
  //arms
  //skin
  if(skin == true) {
    fill(36, 78, 22);
  }//dark
  
  if(skin == false) {
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
  if(skin == true) {
    fill(36, 80, 27);
  }//dark
  
  if(skin == false) {
    fill(34, 63, 81);
  }//light
  arc(0, 240, 150, 400, PI, TWO_PI); //body
  
  //legs
  //skin
  if(skin == true) {
    fill(36, 78, 22);
  }//dark
  
  if(skin == false) {
    fill(34, 61, 75);
  }//light
  arc(0, 240, 150, 400, 0, PI);//legs
  fill(165, 50, 92); //background color
  rect(-1, 280, 2, 160);//gap
  
  //Outfit
  if(outfit == true) {
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
  
  if(outfit == false) {
    fill(248, 16, 74);
    arc(0, 240, 150, 400, 3.5f, 5.93f);
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
  
  //head (over clothes, under hair/face) 
  //skin
  if(skin == true) {
    fill(36, 80, 27);
  }//dark
  
  if(skin == false) {
    fill(34, 63, 81);
  }//light
  ellipse(0, 0, 100, 100); //head
  
  //hair
  if(hair_CLR == true) {
    fill(36, 98, 99);
  }//light
  if(hair_CLR == false) {
    fill(3, 58, 10);
  }//dark
  
  if(hair == true) {
    rotate(PI/4);
    ellipse(-37, 0, 30, 70);
    rotate(-PI/2);
    ellipse(37, -3, 30, 70);
  }//long
  
  if(hair == false) {
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

public void mousePressed() {
  if(mouseX <= 100 && mouseX >= 60 && mouseY <= 140 && mouseY >= 100) {
    hair = !hair;
  }//hair
  if(mouseX <= 420 && mouseX >= 380 && mouseY <= 140 && mouseY >= 100) {
    hair = !hair;
  }//hair
  
  if(mouseX <= 100 && mouseX >= 60 && mouseY <= 260 && mouseY >= 220) {
    hair_CLR = !hair_CLR;
  }//hair_CLR
  if(mouseX <= 420 && mouseX >= 380 && mouseY <= 260 && mouseY >= 220) {
    hair_CLR = !hair_CLR;
  }//hair_CLR
  
  if(mouseX <= 100 && mouseX >= 60 && mouseY <= 380 && mouseY >= 340) {
    outfit = !outfit;
  }//outfit
  if(mouseX <= 420 && mouseX >= 380 && mouseY <= 380 && mouseY >= 340) {
    outfit = !outfit;
  }//outfit
  
  if(mouseX <= 100 && mouseX >= 60 && mouseY <= 500 && mouseY >= 460) {
    skin = !skin;
  }//skin
  if(mouseX <= 420 && mouseX >= 380 && mouseY <= 500 && mouseY >= 460) {
    skin = !skin;
  }//skin
}//mousePressed
  public void settings() {  size(800,600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "FinalProj" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
