require_relative 'entity'
# This is a player class
class Player < Entity
  def initialize(x, y)
    super(x, y)
    @image = Gosu::Image.new("media/starfighter.bmp")
    @angle = 90
  end

  def update
    if Gosu.button_down? Gosu:: KB_LEFT
      @x = @x - 2
    end
    if Gosu.button_down? Gosu:: KB_RIGHT
      @x = @x + 2
    end
    if Gosu.button_down? Gosu:: KB_UP
      @y = @y - 2
    end
    if Gosu.button_down? Gosu:: KB_DOWN
      @y = @y + 2
    end
  end

  def draw
    @image.draw_rot(@x, @y, 1, @angle)
  end
end
