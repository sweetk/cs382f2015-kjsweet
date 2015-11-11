PImage img;

void setup() {
  colorMode(HSB, 360, 100, 100);
  size(1109, 562);
  img = loadImage("lab7part2.png");
}//setup

void draw() {
  image(img, 0, 0);
  
  loadPixels();

  for(int i = 0; i < pixels.length; i++) {
    color c = pixels[i];
    float chue = hue(c);
    float csaturation = saturation(c);
    float cbrightness = brightness(c);
    
    //The background
    if(chue < 42 && chue > 41) {
      csaturation = 0;
    }//if
    
    //The river
    if(chue < 216 && chue > 209) {
      csaturation = 50;
    }//if
    
    //The parks
    if(chue < 88 && chue > 83) {
      cbrightness = 95;
    }//if
    
    //Interstate
    if(chue < 35 && chue > 33) {
      cbrightness = 100;
    }//if
    
    //main roads 
    if(chue == 0) {
      csaturation = 20;
    }//if
    
    //back roads
    //? I could never click on one to figure out what it started out as
    //I may have changed them by accident, though
    
    //universities
    if(chue < 45 && chue > 43) {
      csaturation = 50;
      //cbrightness = 
    }//if
    
    //hospitals
    if(chue < 10 && chue > 5) {
      csaturation = 40;
    }//if
    
    c = color(chue, csaturation, cbrightness);
    pixels[i] = c;
  }//for
  
  updatePixels();
  
  if(mousePressed) {
    int x = mouseX;
    int y = mouseY;
    int loc = y*1109 + x;
    
    loadPixels();
    color c = pixels[loc];
    
    print(loc, ": ", hue(c), ", ", saturation(c), ", ", brightness(c), "\n");
  }//mousePressed
}//draw