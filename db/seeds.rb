# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

city =[]

4.times do
city << City.create(city_name:Faker::Address.city)
end

10.times do
    dog = Dog.create(name:Faker::Creature::Dog.name, city: city.sample)
    dog_sitter = DogSitter.create(first_name:Faker::Name.first_name, city: city.sample)
    stroll = Stroll.create(dog: dog, dog_sitter: dog_sitter)
end
