# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "06 84 85 95 95", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "06 84 85 95 95", category: "japanese"}
strobi =  {name: "Strobi", address: "12 Rue Biot, 75017 Paris", phone_number: "01 72 38 59 86", category: "french"}
sushishop =  {name: "Sushishop", address: "3 Rue Racine, 44000 Nantes", phone_number: "08 26 82 66 28", category: "japanese"}
java =  {name: "Java", address: "41 Avenue E, 33970 Lège-Cap-Ferret", phone_number: "05 56 26 18 35", category: "french"}

[dishoom, pizza_east, strobi, sushishop, java].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
