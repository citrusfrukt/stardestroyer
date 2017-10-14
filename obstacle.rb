require 'gosu'

class Obstacle
  def initialize(x, y)
    @x = x
    @y = y
    @sprite = Gosu::Image.new("media/starfighter.bmp")
  end

  def update
    # move obstacle to the right
    @x = @x-1
  end

  def draw
    # draw the obstacle
    @sprite.draw_rot(@x, @y, 100, 270)
  end
end
