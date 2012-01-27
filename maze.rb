require 'location'

class Maze
  def initialize(size)
    @size = size
    @routes = {}
    @unconnected_locations = all_locations.clone
  end

  attr_reader :size

  def add_route(source, destination)
    add_route_one_way(source, destination)
    add_route_one_way(destination, source)
  end

  def has_route?(source, destination)
    @routes.has_key?(source) && @routes[source].include?(destination)
  end

  attr_reader :unconnected_locations

  def all_locations
    @all_locations ||= [].tap do |locations|
      (1..@size).each do |x|
        (1..@size).each do |y|
          locations << Location.new(x, y)
        end
      end
    end
  end

private

  def add_route_one_way(source, destination)
    @routes[source] ||= []
    @routes[source] << destination
    @unconnected_locations.delete(source)
  end

end
