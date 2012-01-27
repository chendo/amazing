require 'location'

class Maze

  def initialize(locations)
    @unconnected_locations = locations.clone
    @routes = {}
  end

  def add_route(source, destination)
    add_route_one_way(source, destination)
    add_route_one_way(destination, source)
  end

  attr_reader :unconnected_locations

  def has_route?(source, destination)
    @routes.has_key?(source) && @routes[source].include?(destination)
  end

private

  def add_route_one_way(source, destination)
    @routes[source] ||= []
    @routes[source] << destination
    @unconnected_locations.delete(source)
  end

end
