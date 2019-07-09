# Your solution here

  
# One line, all the stations on that line
class Subway 
  attr_accessor :red, :green, :orange
  def initialize()
    #when initialize subway do initialize the lines whith it
      @red = Line.new(['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife'])
      @green = Line.new(['Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley', 'Hynes', 'Kenmore'])
      @orange = Line.new(['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills'])
  end

  def stops_between_stations(start_line,  start_station, end_line, end_station)

    #makee these variables accessable from out this methods
     @start_line = start_line 
     @end_line = end_line
    
     #check value of START line
        case (@start_line)
              when "Red" then startt = red
              when "Green" then startt = green
              when "Orange" then startt = orange
           else return p "Not valied START line"
        end
    #check value of END line
        case (@end_line)
              when "Red" then endd = red
              when "Green" then endd = green
              when "Orange" then endd = orange
          else return p "Not valied END Line"
        end

        #in the same LINE
        if start_line == end_line
          p startt.stops(start_station, end_station)
        else
          # different lines
          total = startt.stops(start_station, "Park Street") + endd.stops("Park Street", end_station)
          p total
        end
    end
end


class Line 
  #when line initialize git the array station
  def initialize(stations)
    @stations = stations
  end

  #counting the stops by substact the index and get the absulot value
  def stops(start_station, end_station)
    (@stations.index(start_station) - @stations.index(end_station)).abs
  end
end


# did not use this and did not understand why we need it????
class Station
end


mbta = Subway.new

  mbta.stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
  mbta.stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
  mbta.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6