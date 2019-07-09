
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
        #print info
        p "You must travel through the following stops on the #{start_line} line:"

        #in the same LINE
        if start_line == end_line
          #calling print name methode
          startt.print_names(start_station, end_station)
          #total stops
          total =  startt.stops(start_station, end_station)
          p "#{total} stops in total."
        else
          # FOR different lines
          #calling print name methode
          startt.print_names(start_station, "Park Street")
          #print info
          p "Change at Park Street."
          p "Your trip continues through the following stops on #{end_line} Line:" 

          #calling print names methode for the stations after Park Street
          endd.print_names("Park Street", end_station)

          #total stops
          total = startt.stops(start_station, "Park Street") + endd.stops("Park Street", end_station)
          p "#{total} stops in total."
        end
    end
end


class Line 
  #when line initialize git the array stations
  def initialize(stations)
    @stations = stations
  end

  #counting the stops by substact the index and get the absulot value
  def stops(start_station, end_station)
   (@stations.index(start_station) - @stations.index(end_station)).abs
  end

# looping through array and printing stations name
  def print_names(start_station, end_station)
    startt = @stations.index(start_station)
    endd = @stations.index(end_station)

    if startt < endd
      # loop going up
      while startt  <= endd do 
        p @stations[startt]
        startt +=1
      end

    else
      # loop going down
      while startt  >= endd do 
        p @stations[startt]
        startt -=1
      end

    end #end of if statment

  end#end of print names methode

end


# did not use this and did not understand why we need it????
class Station
end


mbta = Subway.new

  mbta.stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0 With the stations names
  mbta.stops_between_stations('Red', 'South Station', 'Red', 'Alewife') # 7  With the stations names
  mbta.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6  With the stations names