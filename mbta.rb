# Your solution here
class Subway
  attr_reader :subway
  def stops_between_stations(start_line, start_station, end_line, end_station)
    subway ={ 
      red:["South Station", "Park Street", "Kendall", "Central", "Harvard","Porter", "Davis", "Alewife"],
      green:["Government Center", "Park Street", "Boylston", "Arlington","Copley", "Hynes", "Kenmore"],
      orange:["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing","Chinatown", "Back Bay", "Forest Hills"]
      }
    start_i = subway[start_line.to_sym].index(start_station)
    end_i = subway[end_line.to_sym].index(end_station)
    
    if start_line == end_line
      (start_i-end_i).abs
    else
       
      arrive_park_street = (start_index -  (subway[start_line.to_sym].index("Park Street"))).abs
       leave_park_street = (end_index -(subway[end_line.to_sym].index("Park Street"))).abs
       trip = arive_park_street+leave_park_street
    end
  end
end
  
# One line, all the stations on that line
class Line < Subway
  attr_reader :stations
  attr_reader :color
  def initialize(color , stations)
    @stations = stations
    @color = color
  end
end

# One station
class Station < Subway
  def initialize(name)
    @name = name
  end
end

mbta = Subway.new
