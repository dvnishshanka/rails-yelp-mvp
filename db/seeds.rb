# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

5.times do
  restaurant = Restaurant.new(
    {
      name: Faker::Restaurant.name,
      address: Faker::Nation.capital_city,
      phone_number: Faker::PhoneNumber.cell_phone
    }
  )
  restaurant.category = %w[chinese italian japanese french belgian].sample
  restaurant.save
  # review = Review.new({ content: Faker::Restaurant.review })
  # review.rating = rand(0..5)
  # review.restaurant = restaurant
  # review.save
end
