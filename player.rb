require_relative 'entity'
require_relative 'projectile'
# This is a player class
class Player < Entity
  def initialize(x, y, spawner)
    super(x, y)
    @spawner = spawner
    @image = Gosu::Image.new("media/starfighter.bmp")
    @angle = 90
  end

  def shoot
    @spawner.call(Projectile.new(@x, @y))
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
    if Gosu.button_down? Gosu:: KB_SPACE
      self.shoot
    end
  end

  def draw
    @image.draw_rot(@x, @y, 1, @angle)
  end
end
