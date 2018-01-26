class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception






# First define class

class Desc
  def initialize(date, maxtemp_c, mintemp_c, maxwind_kph, totalprecip_mm, text, icon)
    @date = date
    @maxtemp_c = maxtemp_c
    @mintemp_c = mintemp_c
    @maxwind_kph = maxwind_kph
    @totalprecip_mm = totalprecip_mm
    @text = text
    @maxtemp_c = maxtemp_c
    @icon = icon
  end
  attr_reader :date
  attr_reader :maxtemp_c
  attr_reader :mintemp_c
  attr_reader :maxwind_kph
  attr_reader :totalprecip_mm
  attr_reader :text
  attr_reader :icon
end


def apiuxscraper
@descArray = []
require 'open-uri'
#require 'Nokogiri'

xml = Nokogiri::HTML(open("http://api.apixu.com/v1/forecast.xml?key=84632fe14e35400f85f32516182401&q=niseko&days=10"))
forecast = xml.xpath('//forecast')

date = forecast.xpath('//forecastday//date')
maxtemp_c = forecast.xpath('//forecastday//day//maxtemp_c')
mintemp_c = forecast.xpath('//forecastday//day//mintemp_c')
maxwind_kph = forecast.xpath('//forecastday//day//maxwind_kph')
totalprecip_mm = forecast.xpath('//forecastday//day//totalprecip_mm')
text = forecast.xpath('//forecastday//day//condition//text')
icon = forecast.xpath('//forecastday//day//condition//icon')


temp_array_date = []
date.each do |a|
temp_array_date = temp_array_date + [a.text]
end 

temp_array_maxtemp_c = []
maxtemp_c.each do |a|
temp_array_maxtemp_c = temp_array_maxtemp_c + [a.text]
end 

temp_array_mintemp_c = []
mintemp_c.each do |a|
temp_array_mintemp_c = temp_array_mintemp_c + [a.text]
end 

temp_array_maxwind_kph = []
maxwind_kph.each do |a|
temp_array_maxwind_kph = temp_array_maxwind_kph + [a.text]
end 

temp_array_totalprecip_mm = []
totalprecip_mm.each do |a|
temp_array_totalprecip_mm = temp_array_totalprecip_mm + [a.text]
end 

temp_array_text = []
text.each do |a|
temp_array_text = temp_array_text + [a.text]
end 

temp_array_icon = []
icon.each do |a|
temp_array_icon = temp_array_icon + [a.text]
end 




numbers = Array (0..(temp_array_date.length()-1)) # don't forget to subtract one for Ruby indexing starting at 0


for number in numbers do

date = temp_array_date[number]
maxtemp_c = temp_array_maxtemp_c[number]
mintemp_c = temp_array_mintemp_c[number]
maxwind_kph = temp_array_maxwind_kph[number]
totalprecip_mm = temp_array_totalprecip_mm[number]
text = temp_array_text[number]
icon = temp_array_icon[number]

@descArray << Desc.new(date, maxtemp_c, mintemp_c, maxwind_kph, totalprecip_mm, text, icon)
 
end
render template: 'apixuscraper'
end 












end
