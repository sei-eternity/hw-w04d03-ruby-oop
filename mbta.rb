# Your solution here
class Subway
  # attr_accessor :lines
  # def initialize(lines) 
  #   @lines = lines
  #   @start_line = start_line
  #   @start_station = start_station
  #   @end_line = end_line
  #   @end_station = end_station
  end
    def stops_between_stations(start_line, start_station, end_line, end_station)

    lines = {
      Red: [
        "South Station",
        "Park Street",
        "Kendall",
        "Central",
        "Harvard",
        "Porter",
        "Davis",
        "Alewife"
      ],
      Green: [
        "Government Center",
        "Park Street",
        "Boylston",
        "Arlington",
        "Copley",
        "Hynes",
        "Kenmore"
      ],
      Orange: [
        "North Station",
        "Haymarket",
        "Park Street",
        "State",
        "Downtown Crossing",
        "Chinatown",
        "Back Bay",
        "Forest Hills"
      ]
    }
    start_line = start_line.to_sym
    end_line = end_line.to_sym

    startstation = lines[start_line].index(start_station)
    endstation = lines[end_line].index(end_station)


    if start_line == end_line
        (startstation - endstation).abs


    else 
        toPS = lines[start_line].index("Park Street")
        to_PS = (startstation - toPS).abs
        from_ps = lines[end_line].index("Park Street")
        fromps = (endstation - from_ps).abs
        stops = to_PS + fromps
    end
  end
end

# class Line < < Subway
# end

# # One station
# class Station < Subway
# end




mbta = Subway.new
mbta.stops_between_stations('Red', 'Alewife', 'Red', 'Alewife') # 0
mbta.stops_between_stations('Red', 'Alewife', 'Red', 'South Station') # 7
mbta.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') # 6