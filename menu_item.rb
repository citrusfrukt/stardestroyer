class MenuItem
    def initialize(text)
        @font = Gosu::Font.new(20)
        @text = text
    end

    def draw(x, y, color)
        @font.draw(@text, x, y, 1, 1.0, 1.0, color)
    end
end