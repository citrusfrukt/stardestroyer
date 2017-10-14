require 'gosu'
require_relative 'enemy'
require_relative 'obstacle'
require_relative 'background'
require_relative 'spawner'
require_relative 'player'

class StarDestroyer < Gosu::Window
  def initialize
    super 768, 192
    self.caption = 'StarDestroyer Game'
    @spawners = [
      Spawner.new(5000, self.update_interval, self.width, self.height, Enemy),
    ]
    @background = Background.new(0,0)
    @entities = [
      Player.new(50, self.height/2)
    ]
  end

  def update
    @spawners.each do |s|
      if s.shouldSpawn
        obstacle = s.spawn
        @entities << obstacle
        puts @entities
      end

      s.update()
    end

    @background.update()
    @entities.delete_if do |e|
      if e.removeMe
        true
      else
        e.update()
        false
      end
    end
    # ...
  end

  def draw
    @background.draw()
    for e in @entities
      e.draw()
    end
  end
end

StarDestroyer.new.show
