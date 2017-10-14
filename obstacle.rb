require 'gosu'
require_relative 'entity'

class Obstacle < Entity
  def initialize(x, y)
    super(x, y)
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
    Gosu::draw_rect(@x, @y, 30, 100, Gosu::Color::WHITE, 10)
  end
end
