##!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/game.rb'
require_relative '../lib/players.rb'
require_relative '../lib/board.rb'

# Welcome to players
def welcome
  p "Welcome Players!"
  p "Tic Tac Toe is a game for 2 players."
  p "The game is played on a cell that's 3 x 3"
  p "If you are X, your friend? is O"
  p "Players take turns putting their marks in empty squares"
  p "The first player to get 3 marks in a row WIN"
  p "When all 9 squares are full, the game is over. If no player has 3 marks in a row, the game ends in a tie"
  p "Make sure to move in diagonal, horizontal and vertical, otherwise it's going to be an invalid movement"
  p "Good Luck! <_<"
end
welcome

def display(cell)
  p '#########'
  p "#{cell[0][0]} | #{cell[0][1]} | #{cell[0][2]}"
  p '#########'
  p "#{cell[1][0]} | #{cell[1][1]} | #{cell[1][2]}"
  p '#########'
  p "#{cell[2][0]} | #{cell[2][1]} | #{cell[2][2]}"
  p '#########'
end

def name_valid?(name)
  loop do
    valid = name.empty?
    return name unless valid
  end
end

def valid_element?(element)
  loop do
    arr = %w[X O]
    return element if arr.include? element

    p 'ERRORRRR! It should be X or O,  *_*'
    element = gets.chomp.upcase!
  end
end

def info_players
  p "\nOk! Player 1 your name: "
  name = gets.chomp
  player1 = Player.new(name_valid?(name))
  p "Choose: 'X' or 'O'"
  element = gets.chomp.upcase!
  player1.element = valid_element?(element)
  p "Ok! Now is turn for Player 2"
  p "Player 2 your name: "
  name = gets.chomp
  player2 = Player.new(name_valid?(name))
  player2.element = player1.element == 'X' ? 'O' : 'X'
  [player1, player2]
end

players = info_players
player1 = players[0]
player2 = players[1]

loop do
  board = Board.new
  cell = board.cell
  display(cell)

  loop do
    begin
      p "Ok, #{player1.name}, it's your turn, select a number between 1-9"
        place = gets.chomp
        result = board.move(player1.element, place.to_i)
        display(result[2])
      rescue StandardError
        p "Oh no! You have to select a number between 1-9 \nRemember to fill a blank space."
        retry
        end
      if result[0] == true
        p "#{player1.name}, you won!!!"
        player1.score += 1
        p "#{player1.name}, your score: #{player1.score}"
        p "#{player2.name}, your score: #{player2.score}"
        break
      end
      if result[1] == 9
        p "That's a draw!"
        p "#{player1.name}, your score: #{player1.score}"
        p "#{player2.name}, your score: #{player2.score}"
        break
      end
  
      begin
        p "Ok,#{player2.name}, it's your turn, select a number between 1-9"
        place = gets.chomp
        result = board.move(player2.element, place.to_i)
        display(result[2])
      rescue StandardError
        p "Oh no! You have to select a number between 1-9 \nRemember to fill a blank space."
        retry
      end

      next unless result[0] == true
      p "#{player2.name}, Yeah Man you Won !"
      player2.score += 1
      p "#{player1.name}, your score: #{player1.score}"
      p "#{player2.name}, your score: #{player2.score}"
      break
    end

    play_again = 'no'
    sleep 0.5
    p "Game Over"
    sleep 0.5

    p "Another chance ? Yes / NO"
    break if gets.chomp == play_again
  end
