require 'location'
require 'maze'
require 'printer'

class Generator
  def generate(maze)
    # ...
  end
end

maze = Maze.new(20)
Generator.new.generate(maze)
puts Printer.new(maze).print
