#!/usr/bin/env ruby

# frozen_string_literal: true
p "show_rules"
p "Welcome Players!"
p "Tic Tac Toe is a game for 2 players."
p "The game is played on a cell that's 3 x 3"
p "If you are X, your friend? is O"
p "Players take turns putting their marks in empty squares"
p "The first player to get 3 marks in a row WIN"
p "When all 9 squares are full, the game is over. If no player has 3 marks in a row, the game ends in a tie"
p "Make sure to move in diagonal, horizontal and vertical, otherwise it's going to be an invalid movement"
p "select_player_mark"
p "chomp"
p "starting the game"
p "show_board(game.board)"
  for i in 0...9
    p "player_turn #{i%2}"
    p "select_number"  
    num = gets.chomp  
    p "check_choise_player(number)"  
    p "save_choise_player(MARK, number)" 
    p "show_board(game.board)"
    p "game.check_winnner"  
    p "break if game.winner "
  end
  # Roy added this line, i reduced the block if else statement to one line,
  p "show_winner(player_turn)"
  p 'THANKS FOR PLAYING TIC TAC TOE'
