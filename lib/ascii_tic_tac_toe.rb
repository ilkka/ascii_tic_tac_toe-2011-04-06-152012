class RowIndexOutOfBounds < Exception
end

class ColumnIndexOutOfBounds < Exception
end

class AsciiTicTacToe
  def empty
    ' '
  end

  def initialize
    @board = [
      [empty, empty, empty],
      [empty, empty, empty],
      [empty, empty, empty],
    ]
  end

  def at(row, column)
    raise RowIndexOutOfBounds unless (row >= 1 and row <= 3)
    raise ColumnIndexOutOfBounds unless (column >= 1 and column <= 3)
    @board[row-1][column-1]
  end

  def move(row, column, piece)
    raise RowIndexOutOfBounds unless (row >= 1 and row <= 3)
    raise ColumnIndexOutOfBounds unless (column >= 1 and column <= 3)
  end
end
