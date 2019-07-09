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
          case @begin_trip
          when 0 
          # --------------------- CASE RED ---------------------- #
            if @Red.find_index(start_station) == @Red.find_index(end_station) 
            p "You are at your destination"
            p "Number of stops: #{@stops}"
          elsif @Red.find_index(start_station) != @Red.find_index(end_station)
            @stops = @Red.find_index(end_station)
            p "Number of stops: #{@stops}"
          end
          when 1
            # --------------------- CASE GREEN ---------------------- #
            if @Green.find_index(start_station) == @Green.find_index(end_station) 
              p "You are at your destination"
              p "Number of stops: #{@stops}"
            elsif @Green.find_index(start_station) != @Green.find_index(end_station)
              @stops = @Green.find_index(end_station)
              p "Number of stops: #{@stops}"
            end  
          when 2
            # --------------------- CASE ORANGE ---------------------- #
            if @Orange.find_index(start_station) == @Orange.find_index(end_station) 
              p "You are at your destination"
              p "Number of stops: #{@stops}"
            elsif @Orange.find_index(start_station) != @Orange.find_index(end_station)
              @stops = @Orange.find_index(end_station)
              p "Number of stops: #{@stops}"
            end  
          else
            p "Incorrect input"
          end
          

        elsif @begin_trip != @end_trip
          p "Rider arrives at #{start_line} line and #{start_station} station."
          
        else p "Sorry, incorrect input."
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
mbta.stops_between_stations('Green', 'Government Center', 'Green', 'Park Street')
