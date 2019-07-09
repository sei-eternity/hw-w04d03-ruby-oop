class Subway 

  attr_reader :subway

 def initialize (subway)

    @subway = subway 
  end

  def stops_between_stations(start_line, start_station, end_line, end_station)
    subway = {
      Red:["South Station", "Park Street", "Kendall", "Central", "Harvard","Porter", "Davis", "Alewife"],
      Green:["Government Center", "Park Street", "Boylston", "Arlington","Copley", "Hynes", "Kenmore"],
      Orange:["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing","Chinatown", "Back Bay", "Forest Hills"]
    }
    start_index =subway[start_line.to_sym].index(start_station)
    end_index =subway[end_line.to_sym].index(end_station)
 
 
     if start_line == end_line 
      (start_index - end_index).abs
 
      else
         start_park_street_index = subway[start_line.to_sym].index("Park Street")
        to_park_street = (start_index - start_park_street_index).abs
      
        end_park_street_index = subway[end_line.to_sym].index("Park Street")
        from_park_street = (end_index - end_park_street_index).abs
 
        total = to_park_street + from_park_street
    end
 end
end
  
# One line, all the stations on that line
class Line  < Subway
  attr_reader :stations
  attr_reader :name
  def initialize(name, stations)
    @stations=stations
    @name=name
  end
end

# One station
class Station < Subway
  attr_reader :name
  def initialize(name)
    @name = name
end
end

mbta = Subway.new("Red")
puts mbta.stops_between_stations('Red', 'Alewife', 'Red', 'Alewife')
puts mbta.stops_between_stations('Red', 'Alewife', 'Red', 'South Station')