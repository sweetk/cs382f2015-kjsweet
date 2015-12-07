PFont serif, artsy;
boolean phys = true;

int[][] physics = { {1, 87}, 
                    {2, 98}, 
                    {4, 100} };
int[][] art = { {0, 30}, 
                {1, 45}, 
                {2, 57}, 
                {3, 67}, 
                {4, 72}, 
                {5, 82}, 
                {6, 97}, 
                {7, 100} };
String[] colors = {"Black", "Brown", "Blonde", "Red", "Green", "Blue", "Pink", "Purple"};

//0. black, 1. brown, 2. blonde, 3. red, 4. green, 5. blue, 6. pink, 7. purple

void setup() {
  size(800,600);
  background(255);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  
  serif = loadFont("DejaVuSerifCondensed-Bold-48.vlw");
  artsy = loadFont("URWChanceryL-MediItal-48.vlw");

}//setup

void draw() {
  //font
  textSize(26);
  textAlign(CENTER);
  fill(0,100,0);
  if(phys) {
    textFont(serif);
    text("Hair Color of Physics Majors", 400, 60);
    textSize(12);
    text("Click here to view Art Majors", 700, 300);
  }
  else {
    textFont(artsy);
    text("Hair Color of Art Majors", 400, 60);
    textSize(14);
    text("Click here to view Physics Majors", 700, 300);
  }
  
  
  //Legend (dynamic)
  textSize(16);
  
  if(phys) {
    textAlign(LEFT);
    for(int i = 0; i < physics.length; i++) {
      text(colors[physics[i][0]], 50, 200 + 30*i);
    }//legend
  }
  else {
    textAlign(LEFT);
    for(int i = 0; i < art.length; i++) {
      text(colors[art[i][0]], 50, 200 + 30*i);
    }//legend
  }
  
  //elements (dynamic)
  if(phys) {
    for(int i = physics.length-1; i >= 0; i--) {
      if(physics[i][0] == 1) {
        fill(30, 99, 59);
      }
      if(physics[i][0] == 2) {
        fill(51, 59, 89);
      }
      if(physics[i][0] == 4) {
        fill(144, 63, 92);
      }
      arc(400, 300, 400, 400, 0, TWO_PI*(.01*physics[i][1]));
      rect(25, 185 + 30*i, 20, 20);
    }//elements
  }
  else {
    for(int i = art.length-1; i >= 0; i--) { 
      if(art[i][0] == 0) {
        fill(0, 99, 0);
      }
      if(art[i][0] == 1) {
        fill(30, 99, 59);
      }
      if(art[i][0] == 2) {
        fill(51, 59, 89);
      }
      if(art[i][0] == 3) {
        fill(355, 95, 99);
      }
      if(art[i][0] == 4) {
        fill(144, 63, 92);
      }
      if(art[i][0] == 5) {
        fill(226, 90, 99);
      }
      if(art[i][0] == 6) {
        fill(345, 46, 97);
      }
      if(art[i][0] == 7) {
        fill(300, 85, 80);
      }
      arc(400, 300, 400, 400, 0, TWO_PI*(.01*art[i][1]));
      rect(25, 185 + 30*i, 20, 20);
    }//elements
  }
  
}//draw

void mouseClicked() {
  fill(0, 0, 100);
  rect(0,0,800, 600); //resets the background
  
  if(phys) {
    phys = false;
  }
  else {
    phys = true;
  }
}//mouseClicked