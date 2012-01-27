require 'location'
require 'grid'
require 'maze'
require 'printer'

class Generator
  def generate(maze)
    # ...
  end
end

size = 20
locations = Grid.new(size)
maze = Maze.new(locations)

Generator.new.generate(maze)

puts Printer.new(maze, size).print
