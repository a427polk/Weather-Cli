# CLI Controller
 
class Weather::CLI

    def call
        puts "
               
        
            --------------------Weather---------------
^^                             @@@@@@@@@@
^^       ^^                 @@@@@@@@@@@@@@@
                           @@@@@@@@@@@@@@@@@@              ^^
                          @@@@@@@@@@@@@@@@@@@@
~~~~ ~~ ~~~~~ ~~~~~~~~ ~~ &&&&&&&&&&&&&&&&&&&& ~~~~~~~ ~~~~~~~~~~~ ~~~
~         ~~   ~  ~       ~~~~~~~~~~~~~~~~~~~~ ~       ~~     ~~ ~
~      ~~      ~~ ~~ ~~    ~~~~~~~~~~~~~ ~~~~  ~     ~~~    ~ ~~~  ~ ~~ 
~  ~~     ~         ~        ~~~~~~  ~~ ~~~       ~~ ~ ~~  ~~ ~ 
~  ~       ~ ~      ~          ~~ ~~~~~~  ~      ~~  ~             ~~
~             ~        ~      ~   ~~   ~             ~
"
sleep(3)
intro
    menu
  end

  def intro
    puts "Welcome User!"
  end

  def menu
    input = nil

    while input != "exit"
        
        puts "Please enter a specific location in the format: <location>, <country>, to check the current weather conditions for that location. You can also search by <location>, <state/region>, <country>  to find the correct specific location."
        puts "You can also type 'forecast', to display the 3 day forecast of the most recent search. Type 'list' to see a list of previous locations. To quit, type 'exit'."

        input = gets.chomp.downcase

      # If user wants to exit
      if input === "exit"
        puts "Have a great day! Feel free to come back again."
        exit 
      end
      # If user wants to enter invalid input before location
      if input === "forecast" || input === "map"
        puts "Please need to input a location first!"
        menu
      end
      # Display current weather
      if input.empty?
        menu
      else
        weather = Weather::API.current_weather(input)
        display_weather(weather)
      end

      new_input = gets.chomp.downcase

      # Check for specific input commands
      if new_input === "exit"
        puts "See you again soon!"
        exit
      end
    end

  

  def display_weather(weather)
    puts "\n\nReport Time:      #{weather.report_time}"
    puts "Location:         #{weather.location_name}, #{weather.country}"
    puts "Coordinates:      #{weather.coordinates}"
    puts "\nTemperature:      #{weather.temp_avg}ºF / #{weather.temp_celsius}ºC"
    puts "Condition:        #{weather.condition.capitalize}"
    puts "Cloudiness:       #{weather.cloudiness}%"
    puts "\nHumidity:         #{weather.humidity}%"
    puts "Wind Speed:       #{weather.wind_speed} mph"
    puts "Wind Direction:   #{weather.wind_direction}"
    puts "\nSunrise:          #{weather.sunrise}"
    puts "Sunset:           #{weather.sunset}"
  end
end
end