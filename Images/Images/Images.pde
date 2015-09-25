PImage img;
PFont font;

void setup() {
  //size(500, 500);
  img = loadImage("lunar.jpg");
  size(img.width, img.height);
  image(img, 0, 0);
  
  loadPixels();
  
  for(int i = 0; i<pixels.length; i++) {
    color c = pixels[i]; 
    float colorRed = red(c);
    float colorGreen = green(c);
    float colorBlue = blue(c);
    //pixels[i] = color((1./3.)*colorRed + (1./3.)*colorGreen + (1./3.)*colorBlue);
    //pixels[i] = color(colorRed);
    //pixels[i] = color(255-colorRed, 255-colorGreen, 255-colorGreen);
    pixels[i] = color(colorRed, 255-colorGreen, colorBlue);
}//for
  
  updatePixels();
  
  font = loadFont("Purisa-Oblique-48.vlw");
  textFont(font);
  textSize(18);
  text("\"I'm not Neil Armstrong!\"", 10, 20);
}//setup
