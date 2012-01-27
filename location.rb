class Location < Struct.new(:x, :y)
  def up
    Location.new(x, y-1)
  end

  def down
    Location.new(x, y+1)
  end

  def left
    Location.new(x-1, y)
  end

  def right
    Location.new(x+1, y)
  end

  def neighbours
    [up, down, left, right]
  end
end
