require 'gosu'
require_relative 'entity'

class Enemy < Entity
  def initialize(x, y)
    super(x, y)
    @sprite = Gosu::Image.new("media/starfighter.bmp")
  end

  def update
    # move obstacle to the right
    @x = @x-1
    if collidesWithProjectile
      @removeMe = true
    end
  end

  def collidesWithProjectile
    # TODO: implement
    return false
  end

  def draw
    # draw the obstacle
    @sprite.draw_rot(@x, @y, 100, 270)
  end
end
