# frozen_string_literal: true

require 'http'
require 'json'

# Class to get information of the weather
class StateWeather
  attr_accessor :zipcode, :latitude, :longitude

  def initialize(zipcode, country_code)
    @zipcode = zipcode
    @country_code = country_code
  end

  def state_location
    response = HTTP.get("http://api.zippopotam.us/#{@country_code}/#{@zipcode}")
    if response.parse.empty?
      0
    else
      location = response.parse['places']
      @state = location[0]['state']
      @latitude = location[0]['latitude']
      @longitude = location[0]['longitude']
      1
    end
  end

  def show_location
    puts "Your state is: #{@state}"
    puts "Your longitude is: #{@longitude}"
    puts "Your latitude is: #{@latitude}"
  end

  def wind_direction
    response = HTTP.get("http://www.7timer.info/bin/astro.php?lon=#{@longitude}&lat=#{@latitude}&ac=0&unit=metric&output=json&tzshift=0")
    parse_data = JSON.parse(response.to_str)
    parse_data['dataseries'][0]['wind10m']['direction']
  end
end
