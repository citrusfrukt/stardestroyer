require 'gosu'
require_relative './menu_state'

WIDTH = 640
HEIGHT = 480

class StartDestroyer < Gosu::Window
  def initialize
    super WIDTH, HEIGHT
    self.caption = 'StartDestroyer Game'

    @states = []
    @states << MenuState.new(WIDTH, HEIGHT, @states)
  end

  def currentState
    @states[@states.length - 1]
  end

  def update
    self.currentState.update
  end

  def draw
    self.currentState.draw
  end
end

StartDestroyer.new.show
