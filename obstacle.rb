require 'gosu'
require_relative 'entity'

class Obstacle < Entity
  def initialize(x, y, height)
    super(x, y)
    @height = height
  end

  def update
    # move obstacle to the right
    @x = @x-1
    if @x < 300
      @removeMe = true
    end
  end

  def draw
    # draw the obstacle
    Gosu::draw_rect(@x, @y, 30, @height, Gosu::Color::WHITE, 10)
  end
end
