
Board test = new Board(200,200);

void setup() {
  size(1920, 1080);
  frameRate(10);
}



void draw() {

  //test.nextGen2();
  test.nextGen();
  test.nextGen2();
  test.display();
 
}
