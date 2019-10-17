#!/usr/bin/env ruby

class Board
  attr_accessor :board

  def initialize
    @board = {}
    for cell in 1..9
      @board[cell] = " "
    end

    @boardGrid = Array.new(3) { Array.new(3, " ") }
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

  def changeCell(cell,value)
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
    validCombination = true
    column = 3
    3.times do |x|
        validCombination = false if @boardGrid[x][column-1] != value
    end
    return true if validCombination
    return false
end
    #showboard
    def showBoard
        cell = 1
        3.times do |row|
            3.times do |column|
                print "#{@board[cell]}"
                print "|" unless column == 2
                cell += 1
            end
            puts  "\n============" unless row == 2
        end
    end
    private
    def cellToColumn(cell)
        return (cell-1)%3
    end

    def cellToRow(cell)
        return row = (cell-1) /3
    end
  end


#player
class Player
  attr_accessor :name
  attr_accessor :mark

  def initialize(name, mark)
    @name = name
    @mark = mark
  end

  def makeMove(board)
    puts "#{name}, is your turn, Choose 1..9"
    while true
      cell = gets.chomp.to_i
      break cell if cell.between?(1,9) && board.board[cell] == " " 
      puts "ERRROOOOOOO, Your it is later try in another position my friend"
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
  puts "Your name Player 2:"
  name = gets.chomp
  player_2 = Player.new(name, "o")

  9.times do |turn|
      if turn%2 == 0
        player_1.makeMove(board)
        if board.winningCombination(player_1.mark)
            winner = "#{player_1.name}"
            break
        end
      else
        player_2.makeMove(board)
        if board.winningCombination(player_2.mark)
          winner = "#{player_2.name}"
          break
        end
      end

      winner = "None" if turn == 8
  end
  puts "Okey you winner: #{winner}"
end

game()

