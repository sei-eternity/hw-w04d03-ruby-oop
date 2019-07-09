# Your solution here


class Subway

  # @subway_lines = {
  # Red: ['South Station','Park Street','Kendall','Central','Harvard','Porter','Davis','Alewife'],
  # Green: ['Government Center','Park Street','Boylston','Arlington','Copley','Hynes','Kenmore'],
  # Orange: ['North Station','Haymarket', 'Park Street','Downtown Crossing','Chinatown','Back Bay','Forest Hills']
  #       }
#  p @subway_lines[:Red][0]
#  p @subway_lines[:Red].find_index('Kendall')
  def stops_between_stations(start_line, start_station, end_line, end_station)

# p start_line  #red
# p start_station

  subway_lines = {
    Red: ['South Station','Park Street','Kendall','Central','Harvard','Porter','Davis','Alewife'],
    Green: ['Government Center','Park Street','Boylston','Arlington','Copley','Hynes','Kenmore'],
    Orange: ['North Station','Haymarket', 'Park Street','Downtown Crossing','Chinatown','Back Bay','Forest Hills'] }
    # start_line=subway_lines[:Red]
    # p subway_lines[:Red]
    # p subway_lines[:Red][0]
    # p subway_lines[:Red].find_index('Alewife')
      # p subway_lines[Red.to_sym].index(start_station)
   


      start_station_index = subway_lines[start_line.to_sym].index(start_station)
     
      end_station_index = subway_lines[end_line.to_sym].index(end_station)

    if (start_line == end_line)
       return (start_station_index - end_station_index).abs
      # p 'yes'
    end
      
     start_line_park_street_index = subway_lines[start_line.to_sym].index('Park Street')

     trip_to_park_street = (start_station_index - start_line_park_street_index).abs

    end_line_park_street_index = subway_lines[end_line.to_sym].index('Park Street')

    trip_to_destination =(end_station_index - end_line_park_street_index).abs

    total_trip = trip_to_park_street + trip_to_destination

   return total_trip

  end
end
  
subway =Subway.new
 p subway.stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
  p subway.stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
 p subway.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6