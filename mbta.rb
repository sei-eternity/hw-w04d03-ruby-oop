# Your solution here
class Subway

  def stops_between_stations(start_line, start_station, end_line, end_station)
    stops = 0
    puts "Rider boards the train a #{start_line} Line and #{start_station}."
    if start_line == end_line
        stops = oneLine(start_line, start_station, end_station)
    else 
        stops = oneLine(start_line, start_station, 'Park Street')
        puts "Rider transfers from #{start_line} Line to #{end_line} Line at Park Street."
        stops += oneLine(end_line, 'Park Street', end_station)
    end
    puts "Rider exits the train a #{end_line} Line and #{end_station}."
    puts "#{stops} stops"
  end
end
  
# One line, all the stations on that line
# will contain subway lines object array
class Line
  def initialize(red, green, orange)
    @red = ['South Station', 'Park Street', 'Kendall', 'Central', 'Harvard', 'Porter', 'Davis', 'Alewife']
    @green = ['Government Center', 'Park Street', 'Boylston', 'Arlington', 'Copley', 'Hynes', 'Kenmore']
    @orange = ['North Station', 'Haymarket', 'Park Street', 'State', 'Downtown Crossing', 'Chinatown', 'Back Bay', 'Forest Hills']
  end
end

# One station
# will contain the one_line function
class Station
  def oneLine(line, start_station, end_station)
    startingIndex = subwayLines[line.to_sym].index(start_station)
    endingIndex = subwayLines[line.to_sym].index(end_station)
    count = 0
    if startingIndex < endingIndex
        i = startingIndex + 1
        while i <= endingIndex 
            puts `Rider arrive at #{line} Line and #{subwayLines[line.to_sym][i]}.`
            count += 1
            i += 1
        end
    else 
        i = startingIndex - 1 
        while i >= endingIndex
            puts `Rider arrive at #{line} Line and #{subwayLines[line.to_sym][i]}.`
            count += 1
            i -= 1
        end
    end
    return count
  end
end

mbta = Subway.new
mbta.stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
mbta.stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
mbta.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6