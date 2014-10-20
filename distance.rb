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


# javascript version: var x = (λ2-λ1) * Math.cos((φ1+φ2)/2);
#                     var y = (φ2-φ1);
#                     var d = Math.sqrt(x*x + y*y) * R;


# ask for first latitude (to 2 decimal places)
puts "enter first latitude to 2 decimal places"
lat1 = gets

puts "enter second latitude to 2 decimal places"
lat2 = gets

puts "enter first longtitude to 2 decimal places"
long1 = gets

puts "enter second longtitude to 2 decimal places"
long2 = gets


# x = Math.acos( Math.sin(53.34)*Math.sin(-34.60) + Math.cos(53.34)*Math.cos(34.60)*Math.cos((-58.38)-(-6.26)) ) * 6371
#puts x 


x = Math.acos( Math.sin(lat1.to_f)*Math.sin(lat2.to_f) + Math.cos(lat1.to_f)*Math.cos(lat2.to_f)*Math.cos(long1.to_f-long2.to_f )) * 6371
puts x 