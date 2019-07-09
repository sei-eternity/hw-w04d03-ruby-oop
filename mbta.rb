



# One line, all the stations on that line
class Line 
  def initialize(line , stations = [])
    @line, @stations = line , stations
  end

  def stations
    @stations
  end
end





# One station
class Station 
  attr_accessor :station
  def initialize(station)
    @station = station
  end
end





# Your solution here
class Subway 




  


  def initialize

  

  @red_line = Line.new('red',['south station','park street','kendall','central','harvard', 'porter', 'davis' ,'alewife'].map {|i| Station.new(i)})

  @green_line = Line.new('green' ,['government center','park street','boylston','arlington','copley','hynes', 'kenmore'].map {|i| Station.new(i)})

  @orange_line = Line.new('orange',['north station','haymarket','park street','state','cowntown crossing','chinatown','back bay','forest hills'].map {|i| Station.new(i)})
    
  end
  def stops_between_stations(start_line, start_station, end_line, end_station)

    start_line.downcase!
    start_station.downcase!
    end_line.downcase!
    end_station.downcase!

    
    
    
    if start_line == 'red'
      start_l = @red_line
    elsif start_line == 'green'
      start_l = @green_line
    else
      start_l = @orange_line
    end
    

    if end_line == 'red'
    end_l = @red_line
    elsif end_line == 'green'
    end_l = @green_line
    else
    end_l = @orange_line
    end

  start_s = nil
  end_s = nil
  start_l.stations.each {|i| start_s = i unless i.station != start_station}
  end_l.stations.each {|i| end_s = i unless i.station != end_station}



    stops = 0
    
    if start_line == end_line
    
     stops = (start_l.stations.index(start_s) - start_l.stations.index(end_s)).abs
    
    
    else
    park_s = nil
    park_e = nil

    start_l.stations.each {|i| park_s = i unless i.station != 'park street'}
    end_l.stations.each {|i| park_e = i unless i.station != 'park street'}



    stops =  (start_l.stations.index(start_s) - start_l.stations.index(park_s)).abs 
    
    stops += (end_l.stations.index(park_e) - end_l.stations.index(end_s)).abs 
    end
    
    p stops
    end

  

end
  
mbta = Subway.new
mbta.stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
mbta.stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
mbta.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6