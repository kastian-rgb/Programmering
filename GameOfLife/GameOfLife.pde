rules r = new rules();
Board test = new Board(192, 108);

Agent[] a = new Agent[1];
ArrayList<Plants> p = new ArrayList<Plants>();
boolean debug = true;

void setup() {
  size(1920, 1080);
  //frameRate(10);
  //test.initBoard(1, color(0, 0, 255));

  for (int i = 0; i<a.length; i++ ) {
    a[i] = new Agent(100, 100);
  }
  for (int i = 0; i<test.col; i++ ) {
    for (int j = 0; j<test.row; j++ ) {
      if(test.board[i][j].getValue() == 1){
      Plants temp = new Plants(i,j,test.col,test.row);
      p.add(temp);}
    }
  }
}





void draw() {

  //test.nextGen2();
  test = r.GameOfLife(test);
  //test = r.MyRules(test);
  test.display();

  for (int i = 0; i<a.length; i++) {
    a[i].update();
  }
  p.clear();
  for (int i = 0; i<test.col; i++ ) {
    for (int j = 0; j<test.row; j++ ) {
      if(test.board[i][j].getValue() == 1){
      Plants temp = new Plants(i,j,test.col,test.row);
      p.add(temp);}
    }
  }
  for (int i = 0; i<p.size(); i++) {
    p.get(i).update();
  }
  
  
}


void mousePressed() {

  debug = !debug;
}
