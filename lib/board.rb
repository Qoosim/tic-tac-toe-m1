# frozen_string_literal: true

require_relative 'players.rb'
require_relative 'game.rb'

class Board
  attr_accessor :cell, :counter
  def initialize(cell = [[1, 2, 3], [4, 5, 6], [7, 8, 9]])
    @counter = 0
    @cell = cell
  end

  def move(element, place)
    
  end
end