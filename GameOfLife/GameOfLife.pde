
Board test = new Board(100,100);

void setup() {
  size(640, 480);
  
}



void draw() {

  test.nextGen();
  test.display();
 
}
