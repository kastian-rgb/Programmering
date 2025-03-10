class  Board {
  int col = 10;
  int row = 10;
  int[][] board = new int[col][row];

  Board() {
    for (int i=0; i<col; i++) {
      for (int j = 0; j<row; j++)
      {
        
          board[i][j] = (int)random(2);
        
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
        board[i][j] = (int)random(2);
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

  int countN(int _i, int _j) {
    int n = 0;
    for (int k = -1; k <=1; k++) {
      for (int l = -1; l<=1; l++) {
        n += board[_i+k][_j+l];
      }
    }
    n -= board[_i][_j];
    return n;
  }

  void nextGen() {
    int[][] temp = Create2DArray();  
    for (int i= 1; i<col-1; i++) {
      for (int j = 1; j <row-1; j++) {
        if (countN(i, j) < 2)
          temp[i][j] = 0;
        else if (countN(i, j) > 3)
          temp[i][j] = 0;
        else if (countN(i, j) == 3)
          temp[i][j] =1;
        else
          temp[i][j] = board[i][j];
      }
    }
    board = temp;
  }

  int[][] Create2DArray() {
    int[][] temp = new int[col][row];
    for (int i=0; i <col; i++) {
      for (int j =0; j<row; j++) {
        temp[i][j] = 0;
      }
    }

    return temp;
  }
}
