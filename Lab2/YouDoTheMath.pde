float[][] m1 = new float{{1, 3},{5, 7}, {9, 11}};
float[][] m1 = new float{{12, 10}, {8, 6}, {4, 2}};


void setup() { 
  Matrix.addMatrices(m1, m2);
  Matrix.multiplyMatrices(m1, m2);
}//setup