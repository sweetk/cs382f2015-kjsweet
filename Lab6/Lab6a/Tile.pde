class Tile {
  PImage img;
  int yStart, xStart, count;
  float rotStep, xStep, yStep, x, y, rotate;
  
  Tile(PImage i, int newX, int newY, int xx, int yy, int rotamt) {
    img = i;
    x = newX; //the random starting position
    y = newY;
    xStart = xx; //the position in the original image
    yStart = yy; 
    xStep = (xStart-x)/100.;
    yStep = (yStart-y)/100.;
    count = 0;
    rotate = rotamt;
    rotStep = (360 - rotate)/100.; 
    //angle = 0;
    //spinRate = random(3, 10);
  } //Tile (constructor)
  
  void update() {
    if(count < 100) {
      x += xStep;
      y += yStep;
      rotate += rotStep;
      count += 1;
    }
    else {
      x = xStart;
      y = yStart;
      rotate = 0;
    }
    
  } //update
  
  void drawTile() {
    pushMatrix();
    translate(x+10,y+10);
    rotate(rotate);
    translate(-10,-10);
    image(img, 0, 0);
    popMatrix();    
  } //drawTile
  
} //Tile (class)