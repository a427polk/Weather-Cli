# Weather

Welcome to my Weather API here you can find all of your weather needs. 



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'weather'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install weather

## Usage

Weather is a Ruby gem that uses OpenWeatherMap’s API to retrieve current and forecast weather conditions based on a user’s input.

Type weather to start the program.

You will be prompted to enter a location. Anywhere works, the API responds to almost any entry, even if it is misspelled.

Many popular locations will work. In order to get the most accurate results, typing in <location>, <country> will work in almost every query.

The data is outputted to the terminal and shows:

The Report Time and the timezone your computer is in
The API response best guess of the location you typed with the country code
The coordinates of the weather station that returned the data
Current temperature & conditions
Cloudiness
Humidity
Sunrise and Sunset
You can type forecast to display the city's 3 day weather forecast in 24 hours.

To quit the program type exit.



## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/<github username>/weather.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
