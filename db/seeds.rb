# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(email: "test1@test.com", password: "testtest")

User.create(email: "test2@test.com", password: "testtest")

Car.create!(name: "Car 1", description: "X5 BMW", user_id: User.first.id)
Car.create!(name: "Car 2", description: "Mini Austin", user_id: User.first.id)
Car.create!(name: "Car 3", description: "Twingo Renault", user_id: User.first.id)
Car.create!(name: "Car 4", description: "X2 BMW", user_id: User.first.id)
Car.create!(name: "Car 5", description: "208 Peugeot", user_id: User.first.id)
