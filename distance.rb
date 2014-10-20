#Keith Lang 2014

require 'net/https'
require 'uri'
require 'open-uri'


#Distance Between Two Cities - Calculates the distance between
#two cities and allows the user to specify a unit of distance.
# This program may require finding coordinates for the cities
# like latitude and longitude.

# ************

# find distance between two cities using co-ordinates from Google
# Dublin Latitude: 53.3498053
# Dublin Longtitude: -6.260309699999993

# Buenos Aires Latitude: -34.6037232
# Buenos Aires Longtitude: -58.38159310000003


# excel version: ACOS( SIN(lat1)*SIN(lat2) + COS(lat1)*COS(lat2)*COS(lon2-lon1) ) * 6371
# x = Math.acos( Math.sin(53.34)*Math.sin(-34.60) + Math.cos(53.34)*Math.cos(34.60)*Math.cos((-58.38)-(-6.26)) ) * 6371
#puts x 


puts "Input first city"
city1 = gets

puts "Input second city"
city2 = gets

puts "Calculating......."

# Google Geocoding API over HTTP: http://maps.googleapis.com/maps/api/geocode/output?parameters
# API key: AIzaSyCFx2ZQEmgkAwbWZHAS8OtpmV1WWRBx2tA

# example of XML query for "1600 Amphitheatre Parkway, Mountain View, CA"
# https://maps.googleapis.com/maps/api/geocode/xml?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=AIzaSyCFx2ZQEmgkAwbWZHAS8OtpmV1WWRBx2tA

#JSON version
# https://maps.googleapis.com/maps/api/geocode/json?address=1600+Amphitheatre+Parkway,+Mountain+View,+CA&key=AIzaSyCFx2ZQEmgkAwbWZHAS8OtpmV1WWRBx2tA




# Set the request URL
#url = 'http://api.decibel.net/v1/Albums/?artist=miles%20davis&format=json'

url1 = 'https://maps.googleapis.com/maps/api/geocode/json?address=' + city1 + '&key=AIzaSyCFx2ZQEmgkAwbWZHAS8OtpmV1WWRBx2tA'
url2 = 'https://maps.googleapis.com/maps/api/geocode/json?address=' + city2 + '&key=AIzaSyCFx2ZQEmgkAwbWZHAS8OtpmV1WWRBx2tA'



# Set the request authentication headers
# timestamp = Time.now.strftime('%Y%m%d %H:%M:%S')
#headers = {'DecibelAppID' => '<Your Application ID>', 
#           'DecibelAppKey' => '<Your Application Key>', 
#           'DecibelTimestamp' => timestamp}

# Send the GET request                              
# resp = open(url1, headers).read
resp = open(url1).read
puts resp


#x = Math.acos( Math.sin(lat1.to_f)*Math.sin(lat2.to_f) + Math.cos(lat1.to_f)*Math.cos(lat2.to_f)*Math.cos(long1.to_f-long2.to_f )) * 6371
#puts x 














