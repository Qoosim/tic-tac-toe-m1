##!/usr/bin/env ruby

# frozen_string_literal: true

require_relative '../lib/game.rb'
require_relative '../lib/players.rb'
require_relative '../lib/board.rb'

# Welcome to players
def welcome
  puts "Welcome Players!"
  puts "Tic Tac Toe is a game for 2 players."
  puts "The game is played on a cell that's 3 x 3"
  puts "If you are X, your friend? is O"
  puts "Players take turns putting their marks in empty squares"
  puts "The first player to get 3 marks in a row WIN"
  puts "When all 9 squares are full, the game is over. If no player has 3 marks in a row, the game ends in a tie"
  puts "Make sure to move in diagonal, horizontal and vertical, otherwise it's going to be an invalid movement"
  puts "Good Luck! <_<"
end
welcome
