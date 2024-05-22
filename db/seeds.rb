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
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "japanese"}
yolobouffe =  {name: "Yolobouffe", address: "12 rue des Bigornots", category: "italian"}
jaimelasaucisse =  {name: "Jaimelasaucisse", address: "2 rue de la Paix", category: "chinese"}
tropfaim =  {name: "Trop faim", address: "Chateau de Versailles", category: "belgian"}


[dishoom, pizza_east, yolobouffe, jaimelasaucisse, tropfaim].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
