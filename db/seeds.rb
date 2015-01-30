# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
Venue.delete_all
Offering.delete_all
User.delete_all
Booking.delete_all

# Create the venues
puts "Creating venues..."
benchmark = Venue.create(name: "Benchmark", street_number: "1510", street: "North Wells Street", zip_code: "60610", neighborhood: "Old Town", city: "Chicago", state: "IL", latitude: "41.909511", longitude: "87.634984,17", picture: "TO BE ADDED", dress_code: "TO BE ADDED", website_url: "http://benchmarkchicago.com/", google_maps_url: "https://www.google.com/maps/place/Benchmark/@41.909511,-87.634984,17z/data=!3m1!4b1!4m2!3m1!1s0x0:0xc015456992143945")
social_twenty_five = Venue.create(name: "Social Twenty Five", street_number: "25", street: "West Hubbard Street", zip_code: "60654", neighborhood: "River North", city: "Chicago", state: "IL", latitude: "41.889798", longitude: "87.629138,15", picture: "TO BE ADDED", dress_code: "TO BE ADDED", website_url: "http://socialtwentyfive.com/", google_maps_url: "https://www.google.com/maps/place/Social+Twenty-Five/@41.889798,-87.629138,17z/data=!3m1!4b1!4m2!3m1!1s0x880e2cb1f752292b:0xe8f311a6489478d0")

# Create the offerings
puts "Creating offerings..."
benchmark_mon = Offering.create(venue_id: benchmark.id, day_of_week: "Monday", opening_hours: "TO BE ADDED", specials: "TO BE ADDED", base_price_linecut: "TO BE ADDED", price_increments: "TO BE ADDED")
benchmark_tue = (venue_id: benchmark.id, day_of_week: "Tuesday", opening_hours: "TO BE ADDED", specials: "TO BE ADDED", base_price_linecut: "TO BE ADDED", price_increments: "TO BE ADDED")
benchmark_wed = Offering.create(venue_id: benchmark.id, day_of_week: "Wednesday", opening_hours: "TO BE ADDED", specials: "TO BE ADDED", base_price_linecut: "TO BE ADDED", price_increments: "TO BE ADDED")
benchmark_thu = Offering.create(venue_id: benchmark.id, day_of_week: "Thursday", opening_hours: "TO BE ADDED", specials: "TO BE ADDED", base_price_linecut: "TO BE ADDED", price_increments: "TO BE ADDED")
benchmark_fri = Offering.create(venue_id: benchmark.id, day_of_week: "Friday", opening_hours: "TO BE ADDED", specials: "TO BE ADDED", base_price_linecut: "TO BE ADDED", price_increments: "TO BE ADDED")
benchmark_sat = Offering.create(venue_id: benchmark.id, day_of_week: "Saturday", opening_hours: "TO BE ADDED", specials: "TO BE ADDED", base_price_linecut: "TO BE ADDED", price_increments: "TO BE ADDED")
benchmark_sun = Offering.create(venue_id: benchmark.id, day_of_week: "Sunday", opening_hours: "TO BE ADDED", specials: "TO BE ADDED", base_price_linecut: "TO BE ADDED", price_increments: "TO BE ADDED")
social_twenty_five_mon = Offering.create(venue_id: social_twenty_five.id, day_of_week: "Monday", opening_hours: "TO BE ADDED", specials: "TO BE ADDED", base_price_linecut: "TO BE ADDED", price_increments: "TO BE ADDED")
social_twenty_five_tue = Offering.create(venue_id: social_twenty_five.id, day_of_week: "Tuesday", opening_hours: "TO BE ADDED", specials: "TO BE ADDED", base_price_linecut: "TO BE ADDED", price_increments: "TO BE ADDED")
social_twenty_five_wed = Offering.create(venue_id: social_twenty_five.id, day_of_week: "Wednesday", opening_hours: "TO BE ADDED", specials: "TO BE ADDED", base_price_linecut: "TO BE ADDED", price_increments: "TO BE ADDED")
social_twenty_five_thu = Offering.create(venue_id: social_twenty_five.id, day_of_week: "Thursday", opening_hours: "TO BE ADDED", specials: "TO BE ADDED", base_price_linecut: "TO BE ADDED", price_increments: "TO BE ADDED")
social_twenty_five_fri = Offering.create(venue_id: social_twenty_five.id, day_of_week: "Friday", opening_hours: "TO BE ADDED", specials: "TO BE ADDED", base_price_linecut: "TO BE ADDED", price_increments: "TO BE ADDED")
social_twenty_five_sat = Offering.create(venue_id: social_twenty_five.id, day_of_week: "Saturday", opening_hours: "TO BE ADDED", specials: "TO BE ADDED", base_price_linecut: "TO BE ADDED", price_increments: "TO BE ADDED")
social_twenty_five_sun = Offering.create(venue_id: social_twenty_five.id, day_of_week: "Sunday", opening_hours: "TO BE ADDED", specials: "TO BE ADDED", base_price_linecut: "TO BE ADDED", price_increments: "TO BE ADDED")
# Question: How do I make this a limited (but larger) number of offerings per week day and venue, with X price increase per booking...?

# Create the users
puts "Creating actors..."
barr = User.create(username: "Erinn Louise", email:"erinn.barr@kellogg.northwestern.edu", password: "TO BE ADDED", first_name: "Erinn", last_name: "Barr", birthday: "TO BE ADDED", gender: "TO BE ADDED", street_number: "TO BE ADDED", street: "TO BE ADDED", zip_code: "TO BE ADDED", city: "TO BE ADDED", state: "TO BE ADDED", credit_card_info: "TO BE ADDED", paypal_email: "TO BE ADDED")
eng = User.create(username: "Brian", email:"brian@brianeng.com", password: "TO BE ADDED", first_name: "Brian", last_name: "Eng", birthday: "TO BE ADDED", gender: "TO BE ADDED", street_number: "TO BE ADDED", street: "TO BE ADDED", zip_code: "TO BE ADDED", city: "TO BE ADDED", state: "TO BE ADDED", credit_card_info: "TO BE ADDED", paypal_email: "TO BE ADDED")

# Create the bookings
puts "Creating bookings..."
Booking.create(user_id: barr.id, offering_id: benchmark_fri.id, linecut_date_time: "?", booking_date_time: "?",  linecut_price: "?")
Booking.create(user_id: eng.id, offering_id: benchmark_fri.id, linecut_date_time: "?", booking_date_time: "?",  linecut_price: "?")
# Question: Still need to define how the booking is going to know the date and time of the linecut for linecut_date_time...
# Question: How do I tell booking to put the current time and date (= moment of booking) in booking_date_time?
# Question: How do I tell booking how to calculate the line cut price: base price + (#offerings sold * price increment - price increment)?

puts "There are now #{Venue.count} venues, #{Offering.count} offerings, #{User.count} users, and #{Booking.count} bookings in the database."