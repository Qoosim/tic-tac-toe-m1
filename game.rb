class Board
  attr_accessor :board

  def initialize
    @board = {}
    for cell in 1..9
      @board[cell] = " "
    end

    @boardGrid = Array.new(3) { Array.new(3, " ")}
    self.showInstruct
  end

  def showInstruct
    puts "\n Dont forget, You can use The number so select"
    puts  " 1 | 2 | 3 ",
          "-----------",
          " 4 | 5 | 6 ",
          "-----------",
          " 7 | 8 | 9 "
    puts ""
  end
end

