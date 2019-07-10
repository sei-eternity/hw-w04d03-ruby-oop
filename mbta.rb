# Your solution here


   # Your solution here
	class Subway
	  def stops_between_stations(start_line, start_station, end_line, end_station)
	  attr_reader :subway
	
	 def initialize (subway)
    @subway = subway 
	  end
	
	  def stops_between_stations(start_line, start_station, end_line, end_station)
	    subway = {
	      Red:["South Station", "Park Street", "Kendall", "Central", "Harvard","Porter", "Davis", "Alewife"],
	      Green:["Government Center", "Park Street", "Boylston", "Arlington","copley", "Hynes", "kenmore"],
	      Orange:["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing","Chinatown", "Back Bay", "Forest hills"]
	    }
	    start_index =subway[start_line.to_sym].index(start_station)
	    end_index =subway[end_line.to_sym].index(end_station)
	
	
	     if start_line == end_line 
	      (start_index - end_index)
	
	      else
	         start_park_street_index = subway[start_line.to_sym].index("Park Street")
	        to_park_street = (start_index - start_park_street_index).abs
	
	        end_park_street_index = subway[end_line.to_sym].index("Park Street")
	        from_park_street = (end_index - end_park_street_index).abs
	
	        total = to_park_street + from_park_street
	    end
	 end
	
	
	# One line, all the stations on that line
	class Line
	class Line  < Subway
  end
	end
	
	# One station
	class Station
	class Station < Subway
	 
	end
	end
	
