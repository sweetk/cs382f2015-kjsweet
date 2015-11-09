PImage img;
Tile[] tiles;

void setup() {
  img = loadImage("lunar.jpg");
  size(480, 390);
  //image(img, 0, 0);
  tiles = new Tile[288];
  
  int tileNum = 0;
  for (int y = 0; y < img.height; y += 20) {
    for (int x = 0; x < img.width; x += 20) {
      int xrand = (int)random(0,480);
      int yrand = (int)random(0,390);
      int rotrand = (int)random(0,359);
      tiles[tileNum] = new Tile(img.get(x, y, 20, 20), xrand, yrand, x, y, rotrand);
      tileNum++;
    } //for   
  } //for
  
} //setup

void draw() {
  background(0);
  for (int i = 0; i < tiles.length; i++) {
    tiles[i].update();
    tiles[i].drawTile();
  } //for
} //draw