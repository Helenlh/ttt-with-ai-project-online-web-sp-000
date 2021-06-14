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
    #binding.pry 
  end
  # The :: is a unary operator that allows: constants, 
  # nstance methods and class methods defined within a 
  # class or module, to be accessed from anywhere 
  #   outside the class or module. Remember in Ruby, 
  #   classes and methods may be considered constants too.
    
    def display  
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