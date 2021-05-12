# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "cleaning db"
Flat.destroy_all

puts "loading 10 flats"
10.times do
  flat = Flat.create!(
    name: "#{Faker::Hipster.word} #{Faker::House.room}",
    address: Faker::Address.street_address,
    description: Faker::Restaurant.review,
    price_per_night: 75,
    number_of_guests: 3
  )
  puts "Flat #{flat.id} created!"
end

puts "All done!"
