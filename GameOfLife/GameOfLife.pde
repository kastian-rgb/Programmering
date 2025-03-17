rules r = new rules();
Board test = new Board(200,200);

void setup() {
  size(1920, 1080);
  frameRate(10);
  test.initBoard(1, color(255,0,0));
}



void draw() {

  //test.nextGen2();
  //test = r.GameOfLife(test);
  //test = r.MyRules(test);
  test.display();
 
}
