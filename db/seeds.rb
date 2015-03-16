# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
City.delete_all
Venue.delete_all
User.delete_all

# Create the cities
puts "Creating cities..."
chicago = City.create(name: "Chicago")
nyc = City.create(name: "NYC")

# Create the venues
puts "Creating venues..."
highlineballroom = Venue.create(name: "Highline Ballroom", street_number: "431", street: "West 16th Street", zip: "10011", neighborhood: "Chelsea", city_id: nyc.id, state: "NY", latitude: "40.743035", longitude: "74.005878", image: "highlineballroom.jpg", dress_code: "No strict dress code for Highline Ballroom's own events - clothing such as shorts, jeans, sneakers, and hats are permitted. However: Private events and club nights may have their own dress code.", hours: "Monday	11:00 am – 11:00 pm, Tuesday	11:00 am – 11:00 pm, Wednesday	11:00 am – 11:00 pm, Thursday	11:00 am – 11:00 pm, Friday	11:00 am – 11:00 pm, Saturday	11:00 am – 4:00 am, Sunday	11:00 am – 11:00 pm", website_url: "http://highlineballroom.com/", google_maps_url: "https://www.google.com/maps/place/Highline+Ballroom/@40.743035,-74.005878,17z/data=!3m1!4b1!4m2!3m1!1s0x0:0x9ba9489fa2dfbb8")
socialtwentyfive = Venue.create(name: "Social Twenty Five", street_number: "25", street: "West Hubbard Street", zip: "60654", neighborhood: "River North", city_id: chicago.id, state: "IL", latitude: "41.889798", longitude: "87.629138,15", image: "socialtwentyfive.jpg", dress_code: "Dress to Impress", hours: "Monday	9:00 am – 5:00 pm, Tuesday	9:00 am – 5:00 pm, Wednesday	9:00 am – 5:00 pm, Thursday	9:00 am – 5:00 pm, Friday	9:00 am – 5:00 pm, Saturday	Closed, Sunday	Closed", website_url: "http://socialtwentyfive.com/", google_maps_url: "https://www.google.com/maps/place/Social+Twenty-Five/@41.889798,-87.629138,17z/data=!3m1!4b1!4m2!3m1!1s0x880e2cb1f752292b:0xe8f311a6489478d0")
themid = Venue.create(name: "The Mid", street_number: "306", street: "North Halsted Street", zip: "60661", neighborhood: "West Loop", city_id: chicago.id, state: "IL", latitude: "41.887074", longitude: "87.647859", image: "themid.jpg", dress_code: "Dress to Impress – Collared Shirts Recommended, Strict Dress Code Rules Apply at Some Events: No Gym Shoes, No Hats, No Sports Attire, No Graphic Tees, No Shorts", hours: "Monday	10:00 pm – 4:00 am, Tuesday	Closed, Wednesday	Closed, Thursday	Closed, Friday	10:00 pm – 4:00 am, Saturday	10:00 pm – 5:00 am, Sunday	Closed", website_url: "http://www.themidchicago.com/", google_maps_url: "https://www.google.com/maps/place/The+Mid+Chicago/@41.887074,-87.647859,17z/data=!3m1!4b1!4m2!3m1!1s0x0:0xd6b72b9256a5ff62")

# Create the users
puts "Creating users..."
User.create(name: "Erinn", email:"erinn.barr@kellogg.northwestern.edu", password: "unicornsandrainbows")
User.create(name: "Brian", email:"b-eng@kellogg.northwestern.edu", password: "catvideosareinthecomputer")

puts "There are now #{User.count} users and #{Venue.count} venues in #{City.count} cities in the database."