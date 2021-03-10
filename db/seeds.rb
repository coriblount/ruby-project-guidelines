User.destroy_all
Sights.destroy_all
Trips.destroy_all
Flights.destroy_all
Destinations.destroy_all


#user data
user1 = User.create(name:"shane", password: "password1")
user2 = User.create(name:"cori", password: "0000")
user3 = User.create(name: "drake", password: "adonis")
user4 = User.create(name: "beyonce", password: "blue ivy")
user5 = User.create(name: "oprah", password: "stedman")


#sights data
eiffel_tower = Sights.create(name:"eiffel tower", location:"paris, france")
black_sand_beach = Sights.create(name:"black sand beach", location: "maui, hawaii")
kemah_boardwalk = Sights.create(name:"kemah", location:"galveston, tx")
statue_of_liberty = Sights.create(name:"staue of liberty", location:"new york, ny")
colosseum = Sights.create(name:"collosseaum", location:"rome, italy")


#destination data
d1 = Destinations.create(name: "see the eiffel tower")
d2 = Destinations.create(name:"visit the black sand beach")
d3 = Destinations.create(name:"kemah boardwalk")
d4 = Destinations.create(name:"visit the statue of liberty")
d5 = Destinations.create(name:"visit the colloseaum")



#flight data
flight1 = Flights.create(name: "Flight-" + rand(100..600).to_s)
flight2 = Flights.create(name: "Flight-" + rand(100..600).to_s)
flight3 = Flights.create(name: "Flight-" + rand(100..600).to_s)
flight4 = Flights.create(name: "Flight-" + rand(100..600).to_s)
flight5 = Flights.create(name: "Flight-" + rand(100..600).to_s)



#trip data
trip1 = Trips.create(user_id: user1.id, flights_id: flight1.id, destination_id: d1.id)
trip2 = Trips.create(user_id: user2.id, flights_id: flight2.id, destination_id: d2.id)
trip3 = Trips.create(user_id: user3.id, flights_id: flight3.id, destination_id: d3.id)
trip4 = Trips.create(user_id: user4.id, flights_id: flight4.id, destination_id: d4.id)
trip5 = Trips.create(user_id: user5.id, flights_id: flight5.id, destination_id: d5.id)