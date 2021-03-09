User.destroy_all
Sights.destroy_all
Trips.destroy_all
Flights.destroy_all


#user data
user1 = User.create(name:"shane", password: "password1")
user2 = User.create(name:"cori", password: "0000")
user3 = User.create(name: "drake" password: "adonis")

#sights data
eiffel_tower = Sights.create(name:"eiffel tower" location:"paris, france")
black_sand_beach = Sights.create(name:"black sand beach" locaton: "maui, hawaii")
kemah_boardwalk = Sights.create(name:"kemah" location:"galveston, tx")
statue_of_liberty = Sights.create(name:"staue of liberty" location:"new york, ny")
colosseum = Sights.create(name:"collosseaum" location:"rome, italy")


#destination data
d1 = Destination.create(name: "see the eiffel tower")
d2 = Destination.create(name:"visit the black sand beach")
d3 = Destination.create(name:"kemah boardwalk")
d4 = Destination.create(name:"visit the statue of liberty")
d5 = Destination.create(name:"visit the colloseaum")



#flight data
flight1 = Flight.create(name: "Flight-" + rand(100..600).to_s)
flight2 = Flight.create(name: "Flight-" + rand(100..600).to_s)
flight3 = Flight.create(name: "Flight-" + rand(100..600).to_s)
flight4 = Flight.create(name: "Flight-" + rand(100..600).to_s)
flight5 = Flight.create(name: "Flight-" + rand(100..600).to_s)



#trip data
trip1 = Trip.new("Paris", user1, eiffel_tower, flight1)
trip2 = Trip.new("Hawaii", user2, black_sand_beach, flight2)
trip3 = Trip.new("Kemah", user3, kemah_boardwalk, flight3)
trip4 = Trip.new("New York", user3, statue_of_liberty, flight4)
trip5 = Trip.new("Rome", user3, colloseum, flight5)