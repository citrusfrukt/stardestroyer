require 'gosu'
require_relative './menu_state'

WIDTH = 768
HEIGHT = 192

class StarDestroyer < Gosu::Window
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

StarDestroyer.new.show
