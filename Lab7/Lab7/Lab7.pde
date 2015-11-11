PImage img;

void setup() {
  colorMode(HSB, 360, 100, 100);
  size(533, 368);
  img = loadImage("lab7part1.png");
}//setup

void draw() {
  image(img, 0, 0);
  
  loadPixels();

  for(int i = 0; i < pixels.length; i++) {
    color c = pixels[i];
    float chue = hue(c);
    float csaturation = saturation(c);
    float cbrightness = brightness(c);
    
    csaturation -= 40;
    
    c = color(chue, csaturation, cbrightness);
    pixels[i] = c;
    
    //println(chue, csaturation, cbrightness);
  }//for
  
  updatePixels();
}//draw