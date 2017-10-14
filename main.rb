require 'gosu'
require_relative 'obstacle'
require_relative 'background'
require_relative 'obstacle_spawner'
require_relative 'player'

class StarDestroyer < Gosu::Window
  def initialize
    super 768, 192
    self.caption = 'StarDestroyer Game'
    @obstacle_spawner = ObstacleSpawner.new(3000, self.update_interval, self.width, self.height)
    @entities = [
      Background.new(0,0),
      Player.new(50, 50)
    ]
  end

  def update
    obstacle = @obstacle_spawner.spawn_obstacle
    if obstacle
      @entities << obstacle
      puts @entities
    end
    for e in @entities
      e.update()
    end
    # ...
  end

  def draw
    for e in @entities
      e.draw()
    end
  end
end

StarDestroyer.new.show
