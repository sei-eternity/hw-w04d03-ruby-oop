class Subway

  def stops_between_stations(start_line, start_station, end_line, end_station)
  lines = {
    Red: ['South Station','Park Street','Kendall','Central','Harvard','Porter','Davis','Alewife'],
    Green: ['Government Center','Park Street','Boylston','Arlington','Copley','Hynes','Kenmore'],
    Orange: ['North Station','Haymarket', 'Park Street','Downtown Crossing','Chinatown','Back Bay','Forest Hills'] }
    
      start_index = lines[start_line.to_sym].index(start_station)
      end_index = lines[end_line.to_sym].index(end_station)

    if (start_line == end_line)
      
      
      return (start_index - end_index).abs
    
  
  end
   start_line_park_street_index = lines[start_line.to_sym].index('Park Street')
   park_street = (start_index - start_line_park_street_index).abs

    end_line_park_street_index = lines[end_line.to_sym].index('Park Street')
    destination =(end_index - end_line_park_street_index).abs
    total_trip = park_street + destination

   return total_trip

  end
end


subway =Subway.new
 p subway.stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
  p subway.stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
 p subway.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6
