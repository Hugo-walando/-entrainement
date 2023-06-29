# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
User.destroy_all
puts 'Creating users...'
mathilde = User.create!(email: 'mathilde@mail.com', password: '123456')
puts 'Finished!'

puts 'Cleaning database...'
Hotel.destroy_all
puts 'Creating hotel...'
hotel = Hotel.create!(name: 'Montmartre palace', description: 'belle hotel en plein coeur de Montmartre', address: 'Paris')
puts 'Finished!'

puts 'Cleaning database...'
Room.destroy_all
puts 'Creating rooms...'
room1 = Room.create!(capacity: 2, price_per_night: 100, description: 'belle chambre 2 lit', hotel: hotel)
room2 = Room.create!(capacity: 1, price_per_night: 50, description: 'chambre moyenne 1 lit', hotel: hotel)
puts 'Finished!'
