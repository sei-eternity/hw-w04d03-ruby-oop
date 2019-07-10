# Your solution here
class Subway

  attr_accessor :stops , :lines

def initialize (stops, start_line,end_line,end_station)
  @stops, @start_line, @end_line, @end_station = stops, start_line, end_line, end_station

  subway_line = {
   red_line: ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"],
   green_line: ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes","kenmore"],
   orange_line: ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "Chinatown", "Back Bay"]
 }
 
 @redline = Line.new('red', red_line)
 @greenline = Line.new('green', green_line)
 @orangeline = Line.new('orange', orange_line)






end




  def stops_between_stations(start_line, start_station, end_line, end_station)

    if start_line == "red"

  
  end
end
  
# One line, all the stations on that line
class Line
end

# One station
class Station
end
