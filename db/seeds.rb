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
Restaurant.create!(name: "L'emporté", address: "165 rue des Patriotes", phone_number: "0660335957", category: "belgian")
Restaurant.create!(name: "La Patatine", address: "03 rue de Wattrelos", phone_number: "0620654789", category: "french")
Restaurant.create!(name: "Adriano", address: "46 rue Léon Gambetta", phone_number: "0320894216", category: "italian")
Restaurant.create!(name: "Sushi now!", address: "13 rue de Nechin", phone_number: "0320473222", category: "japanese")
Restaurant.create!(name: "Shangai meals", address: "59 rue des Arts", phone_number: "0320653289", category: "chinese")
puts "Finished! Created #{Restaurant.count} restaurants."
