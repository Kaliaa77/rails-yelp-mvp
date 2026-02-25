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

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Pokemonde", address: "4 rue du Maréchal Joffre", category: "chinese")
puts "Created Pokemonde"
Restaurant.create!(name: "Hippopotamus Steakhouse", address: "3 rue Robert Schuman, Claye-Souilly", category: "french")
puts "Created Hippopotamus"
Restaurant.create!(name: "La Côte et l'Arête", address: " Centre commercial Shopping Promenade, Claye-Souilly", category: "french")
puts "Created La Côte et l'Arête"
Restaurant.create!(name: "Le Train de Vie", address: "44 avenue pasteur, Claye-Souilly", category: "italian")
puts "Created Le Train de Vie"
Restaurant.create!(name: "Ayako Sushi", address: "3 rue Robert Schuman, Claye-Souilly", category: "japanese")
puts "Created Ayako Sushi"
# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
