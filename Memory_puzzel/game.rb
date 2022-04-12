require_relative "board"
# require_relative "card"

class Game

    attr_reader :board

    def initialize
      @board = Board.new
      @input_odd = false
      @input_even = false
    end

    

    def play
        puts "enter two numbers btw 0..3 with a space in between: "
        answer1 = gets.chomp.split.map(&:to_i)
        
        answer2 = gets.chomp.split.map(&:to_i)
                


    end


   





end


# # p game1.play
# p game1.populate_board
# p @board.populate_board

# p game1.[](input)