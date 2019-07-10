# Your solution here
class Subway

  def initialize
    lines_stations = [
      ['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'],
      ['Government Center', 'Park Street', 'Boylston', 'Arlingrton', 'Copley', 'Hynes', 'Kenmore'],
      ['North Station', 'Haymarket', 'Park Street', 'Downtown Crossing', 'chinatown', 'Back Bay', 'Forest Hills']
    ]
          
    @park_street = Station.new('Park Street')

    @line_colors = ['Red', 'Green', 'Orange']
    @lines = []
    lines_stations.length.times do |i|
      @lines.push(self.create_line_stations(lines_stations[i], @line_colors[i], @park_street))
    end

  end
  def stops_between_stations(start_line, start_station, end_line, end_station)
    
    start_line = self.getLineObject(@lines, start_line)
    end_line = self.getLineObject(@lines, end_line)

    start_station = self.getStationObject(start_line.stations, start_station)
    end_station = self.getStationObject(end_line.stations, end_station)
    
    if (!@line_colors.include?(start_line.color)|| !@line_colors.include?(end_line.color) ) 
      return "Sorry, you need to enter correct lines"
    end

    if (!start_line.stations.include?(start_station) || !end_line.stations.include?(end_station))
      return "Sorry, you need to enter correct stations"
    end

    start_point = start_line.stations.index(start_station) + 1
    end_point = end_line.stations.index(end_station) + 1

    if start_line.color != end_line.color
      counter = 0
      park_street_start = start_line.stations.index(@park_street) + 1
      park_street_end = end_line.stations.index(@park_street) + 1

      counter += self.calculate_stops(start_point, park_street_start)
      counter += self.calculate_stops(park_street_end, end_point)
      return counter
    else
      return self.calculate_stops(start_point, end_point)
    end

  end

  def calculate_stops(start_point, end_point)
    if start_point < end_point
      end_point - start_point
    elsif start_point > end_point
      start_point - end_point
    else
        0
    end
  end

  def getLineObject(line_arr, color)
    line_arr.each { |line| return line if line.color == color }
  end

  def getStationObject(stations_arr, station_name)
    stations_arr.each { |station| return station if station.name == station_name}
  end
  def create_line_stations(lines_stations, line_color, park)
    stations = []
    lines_stations.length.times do |i|
      if(lines_stations[i] == park.name)
        stations.push(park)
      else
      stations.push(Station.new(lines_stations[i]))
      end
    end
    return Line.new(line_color, stations)
  end
end
  
# One line, all the stations on that line
class Line
  attr_reader :color, :stations
  def initialize(color = "", stations = [])
    @color = color
    @stations = stations
  end
end

# One station
class Station
  attr_reader :name
  def initialize(name)
    @name = name
  end
end


mbta = Subway.new
puts mbta.stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
puts mbta.stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
puts mbta.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6

