require 'gosu'
require_relative "./menu_item"
require_relative "./game_state"

class MenuState
    def initialize(width, height, states)
        @width = width
        @height = height
        @states = states
        @background_image = Gosu::Image.new("media/space.png", :tileable => true)
        @menu = []
        @menu << MenuItem.new("Start")
        @menu << MenuItem.new("Exit")

        @currentSelected = 0
    end

    def update
        if Gosu.button_down?(Gosu::KB_UP)
            @currentSelected = (@currentSelected + 1) % @menu.length
        end
        if Gosu.button_down?(Gosu::KB_DOWN)
            @currentSelected = @currentSelected > 0 ? @currentSelected - 1 : @menu.length - 1
        end
        if Gosu.button_down?(Gosu::KB_RETURN)
            if @currentSelected === 0
                @states << GameState.new
            end
        end
    end

    def draw
        @background_image.draw(0, 0, 0)

        height = @height / 2
        @menu.each_with_index do |val, index| 
            color = @currentSelected === index ? Gosu::Color::YELLOW : Gosu::Color::WHITE
            val.draw(@width / 2, height, color)
            height += 50
        end
    end
end
