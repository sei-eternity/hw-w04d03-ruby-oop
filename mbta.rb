class Subway
  
  attr_accessor :subway
  
    def initialize
      
      @subway = {
        'Red' => Line.new('Red', ['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife']),
        
        'Green' => Line.new('Green', ['Haymarket', 'Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley', 'Hynes', 'Kenmore']),
        
        
        'Orange' => Line.new('Orange', ['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown','Back Bay', 'Forest Hills'])
      }
      
    end
  
    def stops_between_stations(start_line, start_station, end_line, end_station)
      stops_first_line = @subway[start_line].stations
      
      stops_second_line = @subway[end_line].stations
      
      
      if start_line == end_line
        station1_index = stops_first_line.index { |station| station.name == start_station }
        station2_index = stops_first_line.index { |station| station.name == end_station }
        "#{(station1_index - station2_index).abs} Stops Station"
      else
        station1_index = stops_first_line.index { |station| station.name == start_station }
        station2_index = stops_first_line.index { |station| station.name == 'Park Street' }
        num_stop1 = (station1_index - station2_index).abs
  
        station3_index = stops_second_line.index { |station| station.name == 'Park Street' }
        station4_index = stops_second_line.index { |station| station.name ==  end_station }
        num_stop2 = (station3_index - station4_index).abs
  
        num_stops = num_stop1 + num_stop2
        "#{num_stops} Stops Station"
      end
    end
  
  end
  
  # One line, all the stations on that line
  class Line
    attr_accessor  :stations, :name 
    def initialize(name, stations)
      @name = name
      @stations = stations.map { |station_name| Station.new(station_name) }
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
    puts mbta.stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') 
    puts mbta.stops_between_stations('Red', 'Alewife', 'Red', 'South Station')
    puts mbta.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') 