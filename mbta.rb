# Your solution here
class Subway 
    attr_accessor :start_station, :start_line, :end_line, :end_station, :stops
   
    def initialize
      @count = 0
      @stops = 0
      @lines = ["Red", "Green", "Orange"]
      @Red = ["South Station", "Park Street", "Kendall", "Central", "Harvard", "Porter", "Davis", "Alewife"]
      @Green = ["Government Center", "Park Street", "Boylston", "Arlington", "Copley", "Hynes", "Kenmore"]
      @Orange = ["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing", "China Town", "Back Bay", "Forest Hills"]
     end

  
    def stops_between_stations(start_line, start_station, end_line, end_station)
        @begin_trip = @lines.find_index(start_line)
        @end_trip = @lines.find_index(end_line)
        @start_station = start_station
        @end_station = end_station
        # @stations = ["#{@Red["#{@start_station}"]}", "#{@Green["#{@start_station}"}", "#{@Orange["#{@start_station}"}"]
      
        if @begin_trip == @end_trip  
          puts "Start and End line is the same: #{start_line}"
          if @Red.find_index(start_station) == @Red.find_index(end_station) 
            puts "You are at your destination"
          else
            puts "Incorrect input"
          end

          



        elsif @begin_trip != @end_trip
          puts "Rider arrives at #{start_line} line and #{start_station} station."
          
        else puts "Sorry, incorrect input."
      end

    end

end
  
# One line, all the stations on that line
class Line < Subway
    def oneLineStops(line, start_station, end_station)


    end

 end
# # One station
# class Station < Subway
# end




mbta = Subway.new
mbta.stops_between_stations('Red', 'Alewife', 'Red', 'Alewife')
