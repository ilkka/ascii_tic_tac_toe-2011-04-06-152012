class RowIndexOutOfBounds < Exception
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

  def row(index)
    raise RowIndexOutOfBounds unless (index >= 1 and index <= 3)
  end
end
