# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
CATEGORY = %w[chinese italian japanese french belgian]
puts "Creating 5 restaurants"
5.times do
  new_restaurant = Restaurant.new(name: Faker::FunnyName.name, address: Faker::Address.full_address, category: CATEGORY.sample)
  new_restaurant.save
end
puts "Done!"
