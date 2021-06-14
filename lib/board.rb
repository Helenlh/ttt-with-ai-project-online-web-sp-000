#require 'spec helper'
require 'pry'

class Board
  attr_accessor :cells
      
  def initialize
     #@cells = (9, " ") 
  end     
   
  def reset!
    @cells = Array.new(9, " ")
  end
#cells.[] (X, X, X, X, O, O, X, O, O)

    def display 
      #binding.pry 
      @cells = [X, X, X, X, O, O, X, O, O]
     
     
      puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
      puts "-----------"
      puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
      puts "-----------"
      puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
    end 

    def position_taken
  end  
end 