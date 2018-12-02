class Board
  
  def initialize (p1, p2)
    @p1 = p1
    @p2 = p2
    @board_array = make_board
  end

  def make_board
    board_array = [['0', 'A', 'B', 'C'],
                  [ '1', '-', '-', '-'],
                  [ '2', '-', '-', '-'],
                  [ '3', '-', '-', '-']]
  end

  def print_board
    @board_array.each do |element|
      print "".rjust(5)
      element.each do |y|
        print y.ljust(2)
      end
      puts ""
    end
  end

end

board = Board.new("p1", "p2")
board.print_board
