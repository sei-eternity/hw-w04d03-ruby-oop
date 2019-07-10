# Your solution here
class Subway
  attr_accessor :lines
  def initialize
    red = ['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis','Alewife']
    green =['Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley', 'Hynes','Kenmore']
    orange =['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']

    red_line = Line.new("Red",red.map{|station| Station.new(station)})
    green_line = Line.new("Green",green.map{|station| Station.new(station)})
    orange_line = Line.new("Orange",orange.map{|station| Station.new(station)})

    @lines = [red_line, green_line, orange_line]

  end

  def stops_between_stations(start_line, start_station, end_line, end_station)
    start_line = find_line(start_line)
    end_line = find_line(end_line)
    start_station = start_line.find_station(start_station)
    end_station = end_line.find_station(end_station)
    start_line_int = start_line.find_station("Park Street")
    end_line_int = end_line.find_station("Park Street")
    start_line.set_current_station(start_station)
    stops = 0
    passed_stations = [start_line.current_station.name]

    p "You must travel through the following stops on the #{start_line.name} line:"

    if start_line == end_line
      traverse_direction = start_line.find_station_index(start_station) > start_line.find_station_index(end_station)? true: false

      while start_line.current_station != end_station
        traverse_direction ? (start_line.backward_station):(start_line.forward_station)
        passed_stations.push(start_line.current_station.name)
        stops += 1
      end

  
    p passed_stations[0..-2].join(", ") + (passed_stations.last == passed_stations.first ? "": " and ") + passed_stations.last

  else
    end_line.set_current_station(end_line_int)

    traverse_direction = start_line.find_station_index(start_station) > start_line.find_station_index(start_line_int)? true: false
    while start_line.current_station != start_line_int
      traverse_direction ? (start_line.backward_station):(start_line.forward_station)
      passed_stations.push(start_line.current_station.name)
      stops += 1
    end
    p passed_stations[0..-2].join(", ") + (passed_stations.last == passed_stations.first ? "": " and ")+ passed_stations.last

    # change line
    passed_stations = []
    traverse_direction = end_line.find_station_index(end_line_int) > end_line.find_station_index(end_station)? true: false
    p "Change at Park Street."
    p "Your trip continues through the following stops on #{end_line.name} Line:" 
    while end_line.current_station != end_station
      traverse_direction ? (end_line.backward_station):(end_line.forward_station)
      passed_stations.push(end_line.current_station.name)
      stops += 1
    end
    p passed_stations[0..-2].join(", ") + (passed_stations.last == passed_stations.first ? "": " and ")+ passed_stations.last
  end
    
    p "#{stops} stops in total."


  end

  def find_line(line_name)
    self.lines.detect {|line| line.name == line_name}
  end
end
  
# One line, all the stations on that line
class Line
  attr_accessor :name, :stations
  attr_reader  :current_station

  def initialize(name, stations)
    @name, @stations = name, stations
    @current_station = @stations[0]
  end

  def set_current_station(station)
    @current_station = @stations[stations.index(station)]
  end
  def forward_station
    @current_station = @stations[stations.index(@current_station) + 1]
  end

  def backward_station 
    @current_station = @stations[stations.index(@current_station) - 1]
  end

  def find_station(station_name)
    self.stations.detect {|station| station.name == station_name}
  end

  def find_station_index(station)
    self.stations.index(station)
  end
end

# One station
class Station
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

mbta = Subway.new 
# mbta.stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
# mbta.stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
# mbta.stops_between_stations('Red','South Station', 'Red', 'Alewife' ) # 7
mbta.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6
# mbta.stops_between_stations('Orange', 'Forest Hills', 'Green', 'Kenmore') 

# mbta.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') 

