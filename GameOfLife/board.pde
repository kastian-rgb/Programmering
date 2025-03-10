class  Board {
  int col = 10;
  int row = 10;
  int[][] board = new int[col][row];

  Board() {
    for (int i=0; i<col; i++) {
      for (int j = 0; j<row; j++)
      {
        if (i%2 == 0 && j%2 == 0 || i%2== 1 && j%2 == 1)
          board[i][j] = 1;
        else
          board[i][j] = 0;
      }
    }
  }


  Board(int _col, int _row) {
    col = _col;
    row = _row;
    board = new int[col][row];
    for (int i=0; i<col; i++) {
      for (int j = 0; j<row; j++)
      {
        if (i%2 == 0 && j%2 == 0 || i%2== 1 && j%2 == 1)
          board[i][j] = 1;
        else
          board[i][j] = 0;
      }
    }
  }
  void display() {

    for (int i=0; i<col; i++) {
      for (int j = 0; j<row; j++)
      {
        if (board[i][j] == 0) {
          fill(255);
          rect(i*(width/col), j*(height/row), width/col, height/row);
        } else {
          fill(0);
          rect(i*(width/col), j*(height/row), width/col, height/row);
        }
      }
    }
  }

  void countN(){
  
  
  }
  
}
