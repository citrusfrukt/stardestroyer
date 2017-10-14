require_relative 'enemy'

class Spawner
  def initialize(time_between_spawn,
                 update_interval,
                 width,
                 height,
                 spawn_entity)

    @shouldSpawn = false
    @update_interval = update_interval
    @time_between_spawn = time_between_spawn
    @dt = 0
    @width = width
    @height = height
    @spawn_entity = spawn_entity
  end

  def shouldSpawn
    return @shouldSpawn
  end

  def update
    r = Gosu::random(0, 1) * @time_between_spawn/2

    if @dt > @time_between_spawn - r
      @dt = 0
      self.spawn
    else
      @dt = @dt + @update_interval
    end
  end

  def spawn
    x = @width
    y = Gosu::random(0.15, 0.85) * @height
    @spawn_entity.call(Enemy.new(x,y))
  end
end
