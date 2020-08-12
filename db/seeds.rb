# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
sushikev = { name: "Le sushi vert", address: "Rue des mines Saint-Etienne", category: 'japanese', phone_number: '06472567573' }
jojofrite = { name: "Jojo a la frite", address: "Rue des capucins", category: 'belgian', phone_number: '064725325573' }
chineseben = { name: "Magic José", address: "Autun", category: 'chinese' }
matitalia = { name: "Matitalia", address: "Moldavia", category: 'italian', phone_number: '02992955' }
frenchclem = { name: "Au roi des francs", address: "Lyon", category: 'french', phone_number: '029929959' }

[sushikev, jojofrite, chineseben, matitalia, frenchclem].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
