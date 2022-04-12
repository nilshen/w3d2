# require_relative "game"
class Board

    attr_reader :grid, :pairs_value

    def initialize
        @grid = Array.new(4){Array.new(4,"_")} 
        @pairs_value = ("A".."Z").to_a.sample(8)  
        @populated_sets = @pairs_value.concat(@pairs_value).shuffle.each_slice(4).to_a
    end

    def populate_board_print
        @populated_sets.each do |el|
            puts el.join(" ")
        end
    end

    def grid_print
        @grid.each do |el|
            puts el.join(" ")
        end
    end
    
    def [](input)
        populate_board_print[input[0]][input[1]]
    end

    def []=(input,value)
        populate_board_print[input[0]][input[1]] = value
    end

    def win?
        grid_print.flatten == populate_board_print.flatten
    end

end

# p card1 = Card.new
# p card1.pairs_value

p board1 = Board.new
puts "-------------------------"
# p board1
puts "-------------------------"
p board1.populate_board_print
puts "-------------------------"
p board1.grid_print
puts "-------------------------"
p arr = [0, 0]
p board1[arr]
puts "-------------------------"
p board1.win?
