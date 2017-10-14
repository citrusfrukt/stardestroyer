require 'gosu'

class Background
  def initialize(x, y)
    @x = x
    @y = y
    @background_image = Gosu::Image.new("media/background/underwater-fantasy-preview.png")
  end

  def update
    # move background to the left
  end

  def draw
    # draw the background
    @background_image.draw(@x, @y, 0)
  end
end
