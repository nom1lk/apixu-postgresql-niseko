# README

App: https://niseko-forecast.herokuapp.com/
API: https://www.apixu.com/
XML: (accessed through apixu URL with key, location, and number of days forecast appended) - see here: http://api.apixu.com/v1/forecast.xml?key=84632fe14e35400f85f32516182401&q=niseko&days=10

What it does: 
- grabs weather data from www.apixu.com API 
- presents the data in the HTML


Configuration:
- PostgreSQL for dev/prod

Reminders:
- Include the following *inside* the controller method 
require 'open-uri'
require 'nokogiri'

- Include ruby '2.4.2' in gemfile

- Create app with rails new appName --database=postgresql

- Push to git and deploy to heroku as usual

Further links on APIs/widgets:
https://darksky.net/forecast/42.8489,140.7224/ca12/en
http://www.mountainwatch.com/snow-forecasts/Japan/Niseko
http://forecast.io/embed/#lat=42.8489&lon=140.7224&name=Niseko

Further links on codepen:
https://codepen.io/motorlatitude/pen/sFuya
https://codepen.io/BJack/pen/sBefL?depth=everything&order=popularity&page=3&q=weather+widget&show_forks=false

Further links on scraping XML/CSS

https://coderwall.com/p/03r98q/using-the-nokogiri-gem-to-parse-nested-xml-data-in-ruby
http://adrianmcli.com/2015/05/23/rails-scraping-tutorial/


