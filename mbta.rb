# Your solution here
class Subway
  attr_reader :lines
  def initialize(lines)
    @lines=lines
  end
  def stops_between_stations(start_line, start_station, end_line, end_station)
    lines = {
          Red:["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
          Green:["Government Center", "Park Street", "Boylston" , "Arlington", "Copley", "Hynes", "Kenmore"],
          Orange: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay", "Forest Hills"],
        }
    if start_line == end_line
    (lines[start_line.to_sym].index(start_station) - lines[end_line.to_sym].index(end_station)).abs
    else
    (lines[start_line.to_sym].index(start_station) - lines[start_line.to_sym].index("Park Street")).abs + (lines[end_line.to_sym].index("Park Street") - lines[end_line.to_sym].index(end_station)).abs
    end
  end
end
  
# One line, all the stations on that line
class Line<Subway
  attr_reader :stations, :name
  def initialize(name,stations)
    @stations=stations
    @name=name
  end
end

# One station
class Station <Line
  attr_reader :name
  def initialize(name)
    @name=name
  end
  
end
mbta = Subway.new("Red")
puts mbta.stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
puts mbta.stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
puts mbta.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6

