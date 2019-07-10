# Your solution here
class Subway
  def stops_between_stations(start_line, start_station, end_line, end_station)
  attr_reader :Subway
  @subway = subway
  # Create an array for each line
  subway = {
    red:["South Station", "Park Street", "Kendall", "Central", "Harvard","Porter", "Davis", "Alewife"],
    green:["Government Center", "Park Street", "Boylston", "Arlington","Copley", "Hynes", "Kenmore"],
    orange:["North Station", "Haymarket", "Park Street", "State", "Downtown Crossing","Chinatown", "Back Bay", "Forest Hills"]
    }
  end
end

start_line = start_line.to_sym
end_line = end_line.to_sym

start_station_index = subway_lines[start_line].index(start_station)
end_station_index = subway_lines[end_line].index(end_station)


if start_line == end_line
  (start_station_index - end_station_index).abs

else 

start_line_intersection_index = subway_lines[start_line].index("Park Street")
trip_to_intersection = (start_station_index - start_line_intersection_index).abs



end_line_intersection_index = subway_lines[end_line].index("Park Street")
trip_to_destination = (end_station_index - end_line_intersection_index).abs



    total_trip = trip_to_intersection + trip_to_destination
end
end 

