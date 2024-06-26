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
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese", phone_number: "0123456789"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: "0678953412"}
la_bonne_pate =  {name: "La Bonne Pate", address: "24 rue Hardenberg, Bagneux", category: "french", phone_number: "0678594498"}
c_pas_mal =  {name: "C Pas Mal", address: "12 avenue du Général Leclerc, Bourg-la-Reine", category: "belgian", phone_number: "0143221054"}
le_palais =  {name: "Le Palais", address: "38 rue du Bourg, Nantes", category: "chinese", phone_number: "0798425631"}

[dishoom, pizza_east, la_bonne_pate, c_pas_mal, le_palais].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
