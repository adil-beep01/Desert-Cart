#Write a function that parses following input and prints date in your local #timezone:
#input = "{\"time\":\"2022-06-17T05:52:39.787Z\"}"
#parser(input) => "2022-06-17 07:54:13 +0200"
require 'json'
require 'time'
def parser(input)
  date = JSON.parse(input)
  time = date['time']
  utc_time = Time.parse(time) + 2 * 60 * 60
  puts utc_time
end
parser('{"time":"2022-06-17T05:52:39.787Z"}')
