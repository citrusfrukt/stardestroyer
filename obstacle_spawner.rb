require_relative 'spawner'
require_relative 'obstacle'

class ObstacleSpawner < Spawner
  def update
    r = Gosu::random(0, 1) * @time_between_spawn/2
    obstacle_height = Gosu::random(0.5, 1) * 50

    if @dt > @time_between_spawn - r
      x = @width
      if Gosu::random(0, 1) > 0.5
        y = 0
      else
        y = @height-obstacle_height
      end
      @dt = 0
      @spawn_entity.call(Obstacle.new(x, y, obstacle_height))
    else
      @dt = @dt + @update_interval
    end
  end
end
