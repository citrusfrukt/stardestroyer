require 'gosu'
require_relative 'player'

class StartDestroyer < Gosu::Window
  def initialize
    super 640, 480
    self.caption = 'StartDestroyer Game'
    @player = Player.new(50, 50)
    @background_image = Gosu::Image.new("media/space.png", :tileable => true)
  end

  def update
    @player.update
  end

  def draw
    @background_image.draw(0, 0, 0)
    @player.draw
  end
end

StartDestroyer.new.show
