class Spawner
  def initialize(time_between_spawn,
                 update_interval,
                 width,
                 height,
                 spawn_entity)

    @update_interval = update_interval
    @time_between_spawn = time_between_spawn
    @dt = 0
    @width = width
    @height = height
    @spawn_entity = spawn_entity
  end

  def update
  end
end
