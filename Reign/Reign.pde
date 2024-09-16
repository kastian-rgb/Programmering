int vampire = 50;
int church = 50;
int king = 50;
int peasants = 50;
PImage img;
PImage img2;
String t ="Do you wanna stake him?";
String tt = "All hail the King?";
int question = 0;

void setup() {
  size(640, 480);
  textSize(34);
  img = loadImage("data/mads.png");
  img.resize(90, 150);
  img2 = loadImage("data/dapw.jpg");
  img2.resize(90, 150);
}



void draw() {
  background(0);
  imageDisplay();
  scoreDisplay();
}

void keyReleased() {
  println(keyCode);
  textDisplay();
}

void scoreDisplay() {
  if(question < 2)
  text(t, width/2-225, height-100);
  text("V: "+vampire, 50, 50);
  text("C: "+church, 150, 50);
  text("K: "+king, 250, 50);
  text("P: "+peasants, 350, 50);
}

void imageDisplay() {
  if (question == 1)
    image(img2, width/2-45, height/2-75);
  else if (question == 0) {
    image(img, width/2-45, height/2-75);
  } else {
    if (peasants > king && peasants > church && peasants > vampire)
      text("You are a peasant", width/4, height/2);
    else if (king > peasants && king > vampire && king > church )
      text("You are the Kings hand", width/4, height/2);
    else if (vampire > peasants && vampire > king && vampire > church )
      text("You are the stalker of the night", width/8, height/2);
    else if (church > peasants && church > vampire && church > king)
      text("Blessed be the light", width/4, height/2);
  }
}

void textDisplay() {

  if ((key == 89 || key == 121) && question == 1) {
    vampire-=10;
    peasants-=10;
    church+=10;
    king+=10;
    question++;
    t = tt;
  } else if ((key == 78 || key == 110) && question == 1) {
    vampire+=10;
    peasants+=10;
    church-=10;
    king-=15;
    question++;
    t = tt;
  }
  if ((key == 89 || key ==121) && question == 0) {
    vampire-=10;
    peasants+=10;
    church+=10;
    king-=10;
    question++;
    t = tt;
  } else if ((key == 78|| key == 110) && question == 0) {
    vampire+=15;
    peasants-=10;
    church-=10;
    king+=10;
    question++;
    t = tt;
  }
}
