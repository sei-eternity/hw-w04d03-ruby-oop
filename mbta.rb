# frozen_string_literal: true

# Your solution here
class Subway
  # attr_accessor :start_line, :start_station, :end_line, :end_station

  # def initialize(start_line, start_station, end_line, end_station)
  #   @start_line = start_line
  #   @start_station = start_station
  #   @end_line = end_line
  #   @end_station = end_station
  # end

  Red = [
    'South Station', 'Park Street',
    'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'
  ].freeze
  Green = [
    'Government Center', 'Park Street', 'Boylston', 'Arlington',
    'Copley', 'Hynes', 'Kenmore'
  ].freeze
  Orange = [
    'North Station',  'Haymarket', 'Park Street', 'State',
    'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills'
  ].freeze

  def stops_between_stations(start_line, start_station, end_line, end_station)
    p "Rider boards the train a ---  Line and #{start_station}."
    p "Rider exits the train at ---  Line and #{end_station}."
    p start_station_index = start_line.index(start_station)
    p end_station_index = end_line.index(end_station)

  p (start_station_index - end_station_index).abs if start_line === end_line

    start_line_park_street_index = start_line.index('Park Street')
    trip_to_park_street = (start_station_index - start_line_park_street_index).abs

    end_line_park_street_index = end_line.index('Park Street')
    trip_to_destination = (end_station_index - end_line_park_street_index).abs

    p total_trip = trip_to_park_street + trip_to_destination
  end
end

# One line, all the stations on that line
class Line < Subway
  def line_Subway
    p (start_station_index - end_station_index).abs if @start_line === @end_line
    end
end

# One station
class Station < Subway
  def station

    end
end

# your solution here

# mbta = Subway.new( "Red", 'Alewife', 'Red', 'Alewife')
# mbta1 = Subway.new('Red', 'Alewife', 'Red', 'South Station') # 7
# mbta2 = Subway.new('Red', 'South Station', 'Green', 'Kenmore') # 6
# mbtaa = Station.new('Red', 'Alewife', 'Red', 'Alewife')
mbta1 = Subway.new
mbta1.stops_between_stations(Red, 'Alewife', Red, 'South Station')
# mbta = Subway.new('', '', '', '')
# mbta.stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
# mbta.stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
# mbta.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6
