# Ruby Objects Homework

## Objectives:

- Apply your knowledge of Ruby to solve a real world problem.
- Get really good at Ruby classes and objects

## Activity

Create a program that models a subway system.

The program takes the line and stop that a user is getting on at and the line and stop that user is getting off at and prints the journey and the total number of stops for the trip in the console:

There are 3 subway lines:
 

**Green line** 
- Government Center
- Park Street
- Boylston
- Arlington
- Copley
- Hynes
- Kenmore

**Orange line**
- North Station
- Haymarket
- Park Street
- State
- Downtown Crossing
- Chinatown
- Back Bay
- Forest Hills

All 3 subway lines intersect at Park Street, but there are no other intersection points.

### Goal

Tell the user the number of stops between stations using ruby classes.
```rb
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
```

### Bonus

Tell the user the number of stops between stations AND the stops IN ORDER that they will pass through or change at.
```rb
mbta = Subway.new
mbta.stops_between_stations('Red', 'South Station', 'Green', 'Kenmore') 
# "You must travel through the following stops on the Red line:"
# "South Station and Park Street"
# "Change at Park Street."
# "Your trip continues through the following stops on Green Line:" 
# "Boylston, Arlington, Copley, Hines, and Kenmore."
# "7 stops in total."
```

### Double Bonus

Use `get` to allow the user to input their start line, start station, end line, and end station.
