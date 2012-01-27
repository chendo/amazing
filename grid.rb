require 'location'

class Grid
  def initialize(size)
    @size = size
  end

  def locations
    [].tap do |locations|
      (1..@size).each do |x|
        (1..@size).each do |y|
          locations << Location.new(x, y)
        end
      end
    end
  end
end
