# Your solution here
class Subway
  attr_reader :line 
  def initialize(line)
      @line = line 

  end

  def stops_between_stations(start_line, start_station, end_line, end_station)
    line = {
      Red:["South Station", "Park Street", "Kendall", "Central", "Harvard","Porter", "Davis", "Alewife"],
      Green:["Government Center", "Park Street", "Boylston", "Arlington","Copley", "Hynes", "Kenmore"],
      Orange:["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing","Chinatown", "Back Bay", "Forest Hills"]
    }
    if start_line == end_line
      #if it is in same line start=end (the first station not include)
      (line[start_line.to_sym].index(start_station) - line[end_line.to_sym].index(end_station)).abs #abs to convert it to a absolute number 
      else
        # if it is diffirent lines 
      (line[start_line.to_sym].index(start_station) - line[start_line.to_sym].index("Park Street")).abs + (line[end_line.to_sym].index("Park Street") - line[end_line.to_sym].index(end_station)).abs
      end #end of if 
  end #end of function
end #end of class
  
# One line, all the stations on that line
class Line <Subway
  attr_reader :stations, :line #to read only 
    def initialize(line,stations)
      @stations=stations
      @line=line
    end 
end

# One station
class Station<Line
  attr_reader :name
  def initialize(name)
    @name=name
  end
end




subway = Subway.new("Red")
p subway.stops_between_stations("Red", "Alewife", "Red", "Alewife") 
 # 0 >> same line 
