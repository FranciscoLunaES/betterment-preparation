# frozen_string_literal: true

require_relative 'weather'

puts 'Welcome to WS Weather'
puts '-' * 30
print 'Enter your country code ISO 3166-1 alpha-2 (mx, us):'
country_code = gets.chomp
print 'Enter your zip code: '
zipcode = gets.chomp
puts
STATE = StateWeather.new(zipcode, country_code)
puts 'Here it is your information'
puts '-' * 30
if STATE.state_location == 1
  STATE.show_location
  puts "Your wind direction is: #{STATE.wind_direction}"
else
  puts "Doesn't supported"
end
