class Spawner
  def initialize(time_between_spawn,
                 update_interval,
                 width,
                 height,
                 to_spawn)

    @shouldSpawn = false
    @update_interval = update_interval
    @time_between_spawn = time_between_spawn
    @dt = 0
    @width = width
    @height = height
    @to_spawn = to_spawn
  end

  def shouldSpawn
    return @shouldSpawn
  end

  def update
    r = Gosu::random(0, 1) * @time_between_spawn/2

    if @dt > @time_between_spawn - r
      @dt = 0
      @shouldSpawn = true
    else
      @dt = @dt + @update_interval
      @shouldSpawn = false
    end
  end

  def spawn
    x = @width
    y = Gosu::random(0.15, 0.85) * @height
    return @to_spawn.new(x, y)
  end
end
