require_relative 'obstacle'

class ObstacleSpawner
  def initialize(time_between_spawn,
                 update_interval,
                 width,
                 height)

    @update_interval = update_interval
    @time_between_spawn = time_between_spawn
    @dt = 0
    @width = width
    @height = height
  end

  def spawn_obstacle
    r = Gosu::random(0, 1) * @time_between_spawn/2
    x = @width
    y = Gosu::random(0.15, 0.85) * @height

    if @dt > @time_between_spawn - r
      @dt = 0
      return Obstacle.new(x,y)
    else
      @dt = @dt + @update_interval
    end

    return nil
  end
end
