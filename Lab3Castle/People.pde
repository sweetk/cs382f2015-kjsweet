class People {
  //fields
  float colormult;
  float vel, pos;
  
  People(float tempcolor, float velocity, float position) {
    colormult = tempcolor;
    vel = velocity;
    pos = position;
  }//constructor
  
  void move() {
    //make them run
    pos += vel;
    if(pos > width) {
      vel = -vel;
      pos = width;
    }//ifwidth
    
    if(pos < 0) {
      vel = -vel;
      pos = 0;
    }//ifzero
  
  }//move
  
  void draws() {
    //draw People in distress
    for(int j = 0; j < 10; j++) {
      stroke((j+1*.5)*colormult, 0, (j+1*.5)*colormult);
      fill((j+1*.5)*colormult, 0, (j+1*.5)*colormult);
      rect(pos, 380, 10, 20);
      
      //draw their HEADS
      stroke(142, 89, 39);
      fill(142, 89, 39);
      rect(pos, 370, 10, 10);
    }//for people
    
  }//draws
}//People (class)