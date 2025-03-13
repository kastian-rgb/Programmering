class  Board {
  int col = 10;
  int row = 10;
  Cell[][] board = new Cell[col][row];

  Board() {
    for (int i=0; i<col; i++) {
      for (int j = 0; j<row; j++)
      {
        board[i][j] = new Cell();
        board[i][j].setValue((int)random(2));
      }
    }
  }


  Board(int _col, int _row) {
    col = _col;
    row = _row;
    board = new Cell[col][row];
    for (int i=0; i<col; i++) {
      for (int j = 0; j<row; j++)
      {
        board[i][j] = new Cell();
        board[i][j].setValue((int)random(2));
        
      }
    }
  }
  void display() {

    for (int i=0; i<col; i++) {
      for (int j = 0; j<row; j++)
      {
        if (board[i][j].getValue() == 0) {
          fill(board[i][j].getColor());
          rect(i*(width/col), j*(height/row), width/col, height/row);
        } else {
          fill(board[i][j].getColor());
          rect(i*(width/col), j*(height/row), width/col, height/row);
        }
      }
    }
  }

  int countN(int _i, int _j) {
    int n = 0;
    for (int k = -1; k <=1; k++) {
      for (int l = -1; l<=1; l++) {
        n += board[_i+k][_j+l].getValue();
      }
    }
    n -= board[_i][_j].getValue();
    return n;
  }
  
  int countColor(int _i, int _j, color _c) {
    int n = 0;
    for (int k = -1; k <=1; k++) {
      for (int l = -1; l<=1; l++) {
        if(board[_i+k][_j+l].getColor() == _c)
        n++;
      }
    }
    if(board[_i][_j].getColor() == _c)
    n--;
    return n;
  }

  void nextGen() {
    Cell[][] temp = Create2DArray();  
    for (int i= 1; i<col-1; i++) {
      for (int j = 1; j <row-1; j++) {
        if (countN(i, j) < 2){
          temp[i][j].setColor(color(0,0,255));
          temp[i][j].setValue(0);}
        else if (countN(i, j) > 3){
          temp[i][j].setColor(color(255,0,0));
          temp[i][j].setValue(0);}
        else if (countN(i, j) == 3){
          temp[i][j].setColor(color(0,255,0));
          temp[i][j].setValue(1);}
        else{
          temp[i][j].setColor(board[i][j].getColor());
          temp[i][j].setValue(board[i][j].getValue());}
      }
    }
    board = temp;
  }

  void nextGen2() {
    Cell[][] temp = Create2DArray();  
    for (int i= 1; i<col-1; i++) {
      for (int j = 1; j <row-1; j++) {
        if (countColor(i, j, color(0,255,0)) == 3){
          temp[i][j].setColor(color(0,255,0));
          temp[i][j].setValue(1);}
        else if (countColor(i, j, color(255,0,0)) == 3){
          temp[i][j].setColor(color(255,0,0));
          temp[i][j].setValue(1);}
          else if (countColor(i, j, color(0,0,255)) == 3){
          temp[i][j].setColor(color(0,0,255));
          temp[i][j].setValue(1);}
        else{
          temp[i][j].setColor(board[i][j].getColor());
          temp[i][j].setValue(board[i][j].getValue());}
      }
    }
    board = temp;
  }

  Cell[][] Create2DArray() {
    Cell[][] temp = new Cell[col][row];
    for (int i=0; i <col; i++) {
      for (int j =0; j<row; j++) {
        temp[i][j] = new Cell();
      }
    }

    return temp;
  }
}
