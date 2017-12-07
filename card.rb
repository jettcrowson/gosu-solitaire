#To be made 52 different times

class Card

    #These should not ever be changed, so we can just put a reader
    attr_reader :val, :suit, :color

    #These will constantly be changing so we need an accessor
    attr_accessor :x, :y

    def initialize(val, suit)

        #We will leave the value as a number until we print it
        #Ex: It will be a 1 instead of an Ace
        @val = val
        @suit = suit

        #Set the color according to suit
        @color = suit == "Hearts" || suit == "Diamonds" ? "red" : "black"

        @x = 0
        @y = 0
    end

    #For changing the position of the card
    def set_pos(set_x, set_y)
        self.x = set_x
        self.y = set_y
    end


end
