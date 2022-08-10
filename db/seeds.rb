#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning DB..."
Restaurant.destroy_all

restaurants = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do

  puts "Adding restaurant"
  rest = Restaurant.create(
    name: Faker::Hipster.word,
    address: Faker::Music::RockBand.song,
    phone_number: Faker::PhoneNumber.phone_number,
    category: restaurants.sample
  )
  puts "A cool restaurant with id #{rest.id} has been added!"
end
