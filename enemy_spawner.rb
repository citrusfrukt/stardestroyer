require_relative 'spawner'
require_relative 'enemy'

class EnemySpawner < Spawner
  def update
    r = Gosu::random(0, 1) * @time_between_spawn/2

    if @dt > @time_between_spawn - r
      x = @width
      y = Gosu::random(0.15, 0.85) * @height
      @dt = 0
      @spawn_entity.call(Enemy.new(x, y))
    else
      @dt = @dt + @update_interval
    end
  end
end
