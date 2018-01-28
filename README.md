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



