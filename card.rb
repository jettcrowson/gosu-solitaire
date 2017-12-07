#To be made 52 different times

require "./z_order"

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

        @x = 100
        @y = 0

        @base_card_image = Gosu::Image.new("images/card.png", tileable: true)
    end

    #For changing the position of the card
    def set_pos(set_x, set_y)
        self.x = set_x
        self.y = set_y
    end

    def draw
        @base_card_image.draw(x, y, ZOrder::Card)
        puts x
    end

    #Instead of printing an object address, it will print somthing like "2 of Spades"
    def to_s
        return "#{val} of #{suit}"
    end


end
