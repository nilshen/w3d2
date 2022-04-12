require_relative "board"

class Card

attr_reader :pairs_value

    # def self.pairs_value
    #  ("A".."Z").to_a.sample(8)  
    # end

    def initialize
        # @num_pairs = num_pairs
        @pairs_value = Card.pairs_value   
    end

    def hide
        face_up = false
    end


end
