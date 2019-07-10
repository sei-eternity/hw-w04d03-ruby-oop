# Your solution here
class Subway

  def initialize 
    red = ['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife']
    green =  ['Government Center', 'Park Street', 'Boylston', 'Arlingrton', 'Copley', 'Hynes', 'Kenmore']
    orange = ['North Station', 'Haymarket', 'Park Street', 'Downtown Crossing', 'chinatown', 'Back Bay', 'Forest Hills']
    # Declare stations array for each line
    park_street = Station.new('Park Street')

    self.create_line_stations(red, 'Red', park_street)


    red = Line.new()

  end
  def stops_between_stations(start_line, start_station, end_line, end_station)
    
  end

  def create_line_stations(line, park)
    line.times 
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
