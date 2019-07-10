# Your solution here
class Subway
  def stops_between_stations(start_line, start_station, end_line, end_station)
    subway_lines = {
      Red:[
        'South Station',
        'Park Street',
        'Kendall',
        'Central',
        'Harvard',
        'Porter',
        'Davis',
        'Alewife'
      ],
      Green:[
        'Government Center',
        'Park Street',
        'Boylston',
        'Arlington',
        'Copley',
        'Hynes',
        'Kenmore'
      ],
      Orange:[
        'North Station',
        'Haymarket',
        'Park Street',
        'State',
        'Downtown Crossing',
        'Chinatown',
        'Back Bay',
        'Forest Hills'
      ]
    }
    def stopsBetweenStations(subway_lines, startStation, endLine, endStation)
       start_station_index = subway_lines[":#{start_line.downcase}"].index(startStation)
       endStationIndex = subway_lines[":#{end_line.downcase}"].index(endStation)
      if startLine == endLine
          return subway_lines[startLine][start_station_index] - subway_lines[end_line][end_station_index]
      end
         start_lineParkStreet = subway_lines[startLine].index('Park Street');
           tripToParkStreet = (startStationIndex - startLineParkStreet);
           endLineParkStreet = subway_lines[endLine].index('Park Street');
          tripToDestination = (endStationIndex - endLineParkStreet);
         total = tripToParkStreet + tripToDestination;
      end
  
  end
end
  
# One line, all the stations on that line
class Line
end

# One station
class Station
end
