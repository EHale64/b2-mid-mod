# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sam = Mechanic.create(name: "Sam Mills", years_of_experience: 10)
kara = Mechanic.create(name: "Kara Smith", years_of_experience: 11)
hershey = AmusementPark.create(name: "Hershey Park", admission_price: 50.00)
ride1 = Ride.create(name: "Lightning Racer", thrill_rating: 6)
ride2 = Ride.create(name: "Storm Runner", thrill_rating: 8)
ride3 = Ride.create(name: "The Great Bear", thrill_rating: 3)
