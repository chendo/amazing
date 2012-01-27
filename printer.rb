require 'location'

class Printer
  def initialize(maze, size)
    @maze = maze
    @size = size
  end

  def print
    result = ""

    (1..@size).each do |y|
      (1..@size).each do |x|
        location = Location.new(x, y)
        if @maze.has_route?(location, location.up)
          result << "* "
        else
          result << "**"
        end
      end
      result << "*\n"

      (1..@size).each do |x|
        location = Location.new(x, y)
        if @maze.has_route?(location, location.left)
          result << " "
        else
          result << "*"
        end
        result << " "
      end
      result << "*\n"
    end

    result << "*"*(@size*2+1) + "\n"

    result
  end
end
