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

  def update_board(number, letter)

    if !(number.to_i > 0 && number.to_i < 4) || 
      letter != "A" || 
      letter != "B" || 
      letter != "C"
      puts "error: incorrect input. Number 1-3 and Letter A, B or C"
      return
    end

    # how many indexes to add when placing X/O
    case letter
      when "A" 
        letter = 1
      when "B"
        letter = 2
      when "C"
        letter = 3
    end

    @board_array.map do |y|
      y.map do |x|
        if x == number
          y[0 + letter] = "X"
          return
        end
      end
    end
  end

  def print_board
    @board_array.each do |element|
      print "".rjust(5)
      element.each do |x|
        print x.ljust(2)
      end
      puts ""
    end
  end

end

board = Board.new("p1", "p2")
board.print_board
puts "Number: "
number = gets.chomp
puts "Letter: "
letter = gets.chomp.upcase
puts number + letter
board.update_board(number, letter)
board.print_board