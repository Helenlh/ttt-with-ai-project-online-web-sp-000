require 'bundler'
Bundler.require

require_all 'lib'
require 'pry'

class Board
  attr_accessor :cells, :counter
      
  def initialize
     @cells = Array.new(9, " ") 
     @counter = 0
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

    def position(input)
      index = input.to_i - 1
      cells[index]
      end

    def full?
      arr = []
      cells.each do |entry|
        if entry.include?(" ")
          arr << entry 
        end
      end
      if arr.empty?
        true  
      else 
        false   
    end 
end 

def turn_count
  c = 0
  cells.each do |entry| 
    if entry != " " 
      c +=1
  end 
end 
c
end 

def taken?(index)
  indexes = index.to_i-1 
    if (cells[indexes].include?("X") || cells[indexes].include?("O"))
        true 
      elsif 
        cells[indexes].include?(" ")
        false 
      end 
  end

  def valid_move?(user_input)
    new_value = user_input.to_i
    new_value.between?(1,9) && !Board.taken?(index) 
    true 
      end  
     
  
      def update
    #it 'updates the cells in the board with the player token according to the input' do
    end 
end 