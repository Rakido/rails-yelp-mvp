# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "Cleaning the database"
puts "...."
Restaurant.destroy_all

puts 'Creating restaurants...'
puts "...."

5.times do Restaurant.create!(
	
	name: Faker::RickAndMorty.character,
	address: Faker::RickAndMorty.location,
	category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
	phone_number: Faker::PhoneNumber.phone_number,
)
end 

puts "...."
puts 'Created restaurants...'
