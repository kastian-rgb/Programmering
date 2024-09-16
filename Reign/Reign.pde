int vampire = 50;
int church = 50;
int king = 50;
int peasants = 50;
PImage img;
PImage img2;
String t ="Do you wanna stake him?";
String tt = " lksjdfkldsjl";
int question = 0;

void setup() {
  size(640, 480);
  textSize(34);
  img = loadImage("data/mads.png");
  img2 = loadImage("data/dapw.jpg");
  img2.resize(50,150);
}



void draw() {
  background(0);

  imageDisplay();
  scoreDisplay();
}

void keyReleased() {
  if ((key == 89 || key ==121) && question == 0) {
    vampire-=10;
    peasants+=10;
    question++;
    t = tt;
  } else if ((key == 89 || key ==121) && question == 0) {
    vampire-=10;
    peasants+=10;
    question++;
    t = tt;
  }
}

void scoreDisplay() {
  text(t, width/2-225, height-100);
  text("V: "+vampire, 50, 50);
  text("C: "+church, 150, 50);
  text("K: "+king, 250, 50);
  text("P: "+peasants, 350, 50);
}

void imageDisplay(){
if(question == 0)
image(img, width/2, height/2);
else
image(img2, width/2, height/2);
}
