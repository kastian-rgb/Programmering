int rows = 15;
int cols = 11;
int[] fisk = new int[cols];
int[] fisk1 = new int[cols];

void setup() {
  size(1920, 1080);

  for (int i= 0; i < cols; i++) {
    if (i != 5)
      fisk[i] = 0;
    else
      fisk[i] = 1;
  }

  nextGen(fisk);
}


void draw() {

  for (int i = 0; i < cols; i++) {
    if (fisk[i] == 0)
      fill(255);
    else
      fill(0);
    rect(0+(i*width/cols), 50, width/cols, 50);
  }

  for (int i = 0; i < cols; i++) {
    if (fisk1[i] == 0)
      fill(255);
    else
      fill(0);
    rect(0+(i*width/cols), 100, width/cols, 100);
  }
}

void nextGen(int[] f) {

  for (int i = 0; i < f.length; i++) {

    if (i == 0 ) {
      if (f[1] == 1  && f[f.length-1] == 1 )
        fisk1[i] = 0;
      else if (f[1]== 0 &&  f[f.length-1] == 0)
        fisk1[i] = 0; 
      else if (f[1] == 0 || f[f.length-1] == 0)
        fisk1[i] = 1;
    } else if (i == f.length-1) {
      if (f[0] == 1  && f[f.length-2] == 1 )
        fisk1[i] = 0;
      else if (f[0]== 0 &&  f[f.length-2] == 0)
        fisk1[i] = 0; 
      else if (f[0] == 0 || f[f.length-2] == 0)
        fisk1[i] = 1;
    } else if (f[i+1] == 1 && f[i-1] == 1)
      fisk1[i] = 0;
    else if (f[i+1] == 0 && f[i-1] == 0)
      fisk1[i] = 0;
    else if (f[i+1] == 0 || f[i-1] == 0)
      fisk1[i] = 1;
  }
}
