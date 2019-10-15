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

  def changeCell(cell, value)
    @board[cell] = value
    @boardGrid[cellToRow(cell)][cellToColumn(cell)] = value
    puts ""
    self.showBoard
    puts ""
  end

  def winningCombination(value)
    #rows
    3.times do |row|
        validCombination = true
        3.times do |column|
          validCombination = false if @boardGrid[row][column] != value
        end
        return true if validCombination
    end

    #column
    3.times do |column|
        validCombination = true
        3.times do |row|
            validCombination = false if @boardGrid[row][column] != value
        end
        return true if validCombination
    end
  
    #diagnal
end

#player
class Player
  attr_accessor :name
  attr_accessor :mark

  def initialize(name, mark)
    @name =name
    @mark =mark
  end

  def makeMove(board)
    puts "#{name}, is your turn, Choose 1..9"
    while true
      cell = gets.chomp.to_i
      break cell if cell.between?(1,9) && board.board[cell] == " "
      puts "ERRROOOOOOO, try again my friend"
    end
    board.changeCell(cell,mark)
  end
end

#game
def game
  winner = ""
  board = Board.new
  puts "Your Name: "
  name = gets.chomp

  player_1 = Player.new(name, "x")
  puts
end

