# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
puts "Creating 10 fake restaurants"
10.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample(1).first,
    phone_number: Faker::PhoneNumber.phone_number,
    address: Faker::Address.full_address
  )
  restaurant.save!
end
puts 'finished!'
