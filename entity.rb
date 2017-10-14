class Entity
  def initialize(x, y)
    @x = x
    @y = y
    @removeMe = false
  end

  def removeMe
    return @removeMe
  end

  def update
  end

  def draw
  end
end
