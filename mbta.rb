# Your solution here
class Subway
   attr_reader :start_line, :end_line, :start_station, :end_station
  def initialize
    @red = Line.new("Red",["South Station","Park Street","Kendall","Central","Harvard","Porter","Davis","Alewife"])
    @green = Line.new("Green",["Government Center","Park Street","Boylston","Arlington","Copley","Hynes","Kenmore"])
    @orange = Line.new("Orange",["North Station","Haymarket","Park Street","State","Downtown Crossing","Chinatown","Back Bay","Forest Hills"])
  end

  def stops_between_stations(start_line, start_station, end_line, end_station)

    #I couldn't use the "stations" array from Station class, so I didn't know how to solve it...

    #  start_station_index = stations.index(start_station)
    # end_station_index = stations.index(end_station)

    # if start_line == end_line
    #   (start_station_index - end_station_index).abs
    # end
  end
end

#----------------------------------------------------------------------------------#

# One line, all the stations on that line
class Line
  attr_reader :stations, :line_name
  def initialize(line_name, stations)
   @line_name = line_name
   @stations = Station.new(stations)
  end
  # def intersection
  # end

end

#----------------------------------------------------------------------------------#

# One station
class Station
  attr_reader :stations
  def initialize(stations)
    @stations = Array.new(stations)
  end
end

#----------------------------------------------------------------------------------#

mbta = Subway.new
mbta.stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
mbta.stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
mbta.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6
