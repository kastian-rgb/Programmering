int rows = 101;
int cols = 101;
int[] fisk = new int[cols];
int[] fisk1 = new int[cols];
int pos = height/cols;

void setup() {
  size(1920, 1080);

  for (int i= 0; i < cols; i++) {
    if (i != 50)
      fisk[i] = 0;
    else
      fisk[i] = 1;
  }

  for (int i = 0; i < cols; i++) {
    if (fisk[i] == 0)
      fill(255);
    else
      fill(0);
    rect(0+(i*width/cols), height/rows, width/cols, height/rows);
  }

  nextGen(fisk);
}


void draw() {

  pos+=height/cols;

  for (int i = 0; i < cols; i++) {
    if (fisk[i] == 0)
      fill(255);
    else
      fill(0);
    rect(0+(i*width/cols), pos, width/cols, 50);
  }

  nextGen(fisk);
}

void nextGen(int[] f) {

  for (int i = 1; i < f.length-1; i++) {

    if (f[i-1]== 1 && f[i] == 1 && f[i+1] == 1) 
      fisk1[i] = 0;
    else if (f[i-1]== 1 && f[i] == 1 && f[i+1] == 0) 
      fisk1[i] = 1;
    else if (f[i-1]== 1 && f[i] == 0 && f[i+1] == 1) 
      fisk1[i] = 0;
    else if (f[i-1]== 1 && f[i] == 0 && f[i+1] == 0) 
      fisk1[i] = 1;
    else if (f[i-1]== 0 && f[i] == 1 && f[i+1] == 1) 
      fisk1[i] = 1;
    else if (f[i-1]== 0 && f[i] == 1 && f[i+1] == 0) 
      fisk1[i] = 0;
    else if (f[i-1]== 0 && f[i] == 0 && f[i+1] == 1) 
      fisk1[i] = 1;
    else if (f[i-1]== 0 && f[i] == 0 && f[i+1] == 0) 
      fisk1[i] = 0;
  }

  arrayCopy(fisk1, fisk);
}
