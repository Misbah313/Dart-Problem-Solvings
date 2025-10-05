class GameOfLife {
  List <List<int>> _matrix;
  GameOfLife(this._matrix);
  List <List<int>> matrix() {
    return _matrix;
  }

  // tick method
  void tick() {
    // get the number of rows and column
    int row = _matrix.length;
    if(row == 0) return; // empty matrix
    int columns = _matrix[0].length; // columns

    // create a matrix to store the new generation
    List<List<int>> nextGen = List.generate(
      row,
      (_) => List.filled(columns, 0)
    );
    
    // loop over all cells
    for(int r = 0; r < row; r++){
      for(int c = 0; c < columns; c++) {

        int liveCount = 0;

        // loop over neighbors
        for(int dr = -1; dr <= 1; dr++) {
          for(int dc = -1; dc <= 1; dc++) {
            int newRow = r + dr;
            int newCol = c + dc;

            // skip the target value
            if(dr == 0 && dc == 0) continue;
            // skip the out of bound neighbors
            if(newRow < 0 || newRow >= row || newCol < 0 || newCol >= columns) continue;

            if(_matrix[newRow][newCol]== 1) {
              liveCount++;
            }
          }
        }

        var currentCell = _matrix[r][c];
        if(currentCell == 1 && (liveCount == 2 || liveCount == 3)) {
          nextGen[r][c] = 1;
        } else if(currentCell == 0 && liveCount == 3) {
          nextGen[r][c] = 1;
        } else {
          nextGen[r][c] = 0;
        }
      }
    }
    _matrix = nextGen;
  }
}
