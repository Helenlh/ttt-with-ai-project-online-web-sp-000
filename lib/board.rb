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
       while index < 9
          cells.each_with_index do |entry|  
            puts entry[index] 
          index = index +1
      puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
      puts "-----------"
      puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
      puts "-----------"
      puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
    end 
  end 
  end 

    def position(board)
      number = 0
      puts "Please enter a number: " 
      number = $stdin.gets.chomp 
      puts "You entered #{number}"
      number.to_i
      binding.pry 
      puts cells[number]  
    end 
    
      #   def position_taken?(array_index)
    #     board[array_index] != " " 
    # end 
    #end  
end