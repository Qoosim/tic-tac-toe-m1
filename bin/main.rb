#!/usr/bin/env ruby

# frozen_string_literal: true

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
  
def display(cell)
  puts '/////////'
  puts "#{cell[0][0]} | #{cell[0][1]} | #{cell[0][2]}"
  puts '/////////'
  puts "#{cell[1][0]} | #{cell[1][1]} | #{cell[1][2]}"
  puts '/////////'
  puts "#{cell[2][0]} | #{cell[2][1]} | #{cell[2][2]}"
  puts '/////////'
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

    puts 'Wow! It should be x or o, stay focus *_*'
    element = gets.chomp.upcase!
  end
end
