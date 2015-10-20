PImage img,img2,img3,img4;
float[][] filter = {//Edge detection with diagonals
                        {-1, -1, -1}, 
                        {-1, 8, -1}, 
                        {-1, -1, -1}};
float[][] own = {//here goes nothing
                        {1, -1, 1},
                        {-1, 1, -1},
                        {1, -1, 1}};

void setup() {
  img = loadImage("nickism.jpg"); //it's nicki minaj
  img2 = loadImage("nickism.jpg");
  img3 = createImage(400, 300, RGB);
  img4 = createImage(400, 300, RGB);
  size(800, 600); //I'm using 3.0, so img.width, etc. doesn't work. Just in size.
  
  img.loadPixels();
  img2.loadPixels();
  img3.loadPixels();
  img4.loadPixels();
  image(img, 0, 0);
  image(img2, 400, 0);
  applyFilter(); //this does img3
  applyOwn(); //img4
  
  //The rest of setup modifies img2
  loadPixels();
  
  for(int i = 0; i < pixels.length/2; i++) { //This is from messing_with_colors
    if((i % (2*img.width)) >= img.width) {
      color c = pixels[i];
      float colR = red(c);
      float colG = green(c);
      float colB = blue(c);
      
      pixels[i] = color(colR/2, colG, 255); //she looks good in blue!
    }//if
  }//for
  updatePixels();
}//setup

void applyFilter() { //This is stolen almost entirely from Convolution from class
  for (int y=0; y<img.height; y++ ) {
    for (int x=0; x<img.width; x++) {
      img3.pixels[y*img.width+x] = convolution(x, y, filter, img);
    }
  }
  img3.updatePixels();
  image(img3, 0, 300);
}//applyFilter

void applyOwn() { //This is a copy of applyFilter with minimal changes.
                  //I'm sure there was an easier way to do this, but.
  for (int y=0; y<img.height; y++ ) {
    for (int x=0; x<img.width; x++) {
      img4.pixels[y*img.width+x] = convolution(x, y, own, img);
    }
  }
  img4.updatePixels();
  image(img4, 400, 300);
}//applyOwn

// calculates the color after applying the filter
color convolution(int x, int y, float[][] matrix, PImage img) {
  int offset = floor(matrix.length/2);
  float r = 0.0, g = 0.0, b = 0.0;

  for (int i = 0; i < matrix.length; i++) {
    for (int j= 0; j < matrix[i].length; j++) {
      // Which neighbor are we using
      int newX = x+i-offset;
      int newY = y+j-offset;
      int idx = img.width*newY + newX;
      // Make sure we haven't walked off our image
      idx = constrain(idx, 0, img.pixels.length-1);
      // Calculate the convolution
      r += (red(img.pixels[idx]) * matrix[i][j]);
      g += (green(img.pixels[idx]) * matrix[i][j]);
      b += (blue(img.pixels[idx]) * matrix[i][j]);
    }
  }
  return color(r,g,b);
}