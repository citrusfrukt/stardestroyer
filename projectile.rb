require_relative 'entity'
class Projectile < Entity
  def initialize(x, y)
    super(x, y)
  end

  def update
    @x = @x + 1
  end
  def draw
      Gosu::draw_rect(@x, @y, 5, 5, Gosu::Color.argb(0xff_ff0000), z = 0)
  end

end
