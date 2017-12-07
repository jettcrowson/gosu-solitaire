require "gosu"
require "./z_order"

class Solitaire < Gosu::Window
    
      def initialize
        super(1920, 1080, :fullscreen => true)
        self.caption = "Solitaire"

        @background_image = Gosu::Image.new("images/background.jpg", tileable: true)

      end
    
      def update

      end
    
      def draw
        @background_image.draw(0, 0, ZOrder::Background)

      end
    
      def button_down(id)
        close if id == Gosu::KbEscape
      end
      
    end
    
    window = Solitaire.new
    window.show