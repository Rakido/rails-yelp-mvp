# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "Cleaning the database"
puts "...."
Restaurant.destroy_all

puts 'Creating restaurants and reviews...'
puts "...."

5.times do 
	restaurant = Restaurant.create!(
		name: Faker::RickAndMorty.character,
		address: Faker::RickAndMorty.location,
		category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
		phone_number: Faker::PhoneNumber.phone_number,
	)
	10.times do 
		Review.create!(
			content: Faker::SiliconValley.quote,
			rating: [1,2,3,4,5].sample,
			restaurant_id: restaurant.id,
		)
	end 
end 

puts "...."
puts 'Created restaurants and reviews...'

