require_relative 'enemy'
require_relative 'obstacle'
require_relative 'background'
require_relative 'spawner'
require_relative 'player'


class GameState
    def initialize(width, height)

        spawn_entity = Proc.new do |*args|
          @entities << args.first
        end

        @spawners = [
          Spawner.new(5000, 16.6, width, height, spawn_entity),
        ]
        @background = Background.new(0,0)
        @entities = [
          Player.new(50, height/2)
        ]
    end

    def update
        @spawners.each do |s|
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
    end

    def draw
        @background.draw()
        for e in @entities
          e.draw()
        end
    end
end
