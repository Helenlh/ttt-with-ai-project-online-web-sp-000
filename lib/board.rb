require 'bundler'
Bundler.require

require_all 'lib'
require 'pry'

class Board
  attr_accessor :cells
      
  def initialize
     @cells = Array.new(9, " ") 
  end     
   
  def reset!
    @cells = Array.new(9, " ")
  end
  
    def display
      index = 0  
      cells = [X, X, X, X, O, O, X, O, O]
        cells.each do |entry|
          cells[index] = entry 
          index+=1
     
      puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
      puts "-----------"
      puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
      puts "-----------"
      puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
    end 
  end 

    def position_taken
    end  
end 