# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

5.times do
  attributes = {
    name: Faker::Restaurant.name,
    address: "123 cool town",
    phone_number: "123-123123-123",
    category: %w[chinese italian japanese french belgian].sample
  }
  restaurant = Restaurant.create!(attributes)
  puts restaurant.valid? ? "Created #{restaurant.name}" : "ERROR"
end
puts "Finished!"
