# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Meal.delete_all

User.delete_all


#Seeding Users:

User.create(first_name: 'Jane', last_name: 'Wong', email: 'jwly1024@gmail.com', password: '123456', ischef: true)

5.times do
  User.create(first_name: Faker::Pokemon.name, last_name: Faker::Pokemon.move, email: Faker::Internet.email, password: '123456', ischef: true)
end

puts "created #{User.count} users"

#Seeding Meals:

15.times do
  Meal.create(name: Faker::Food.dish, description: Faker::Food.description, price: [1..100].sample, user_id: User.all.sample.id)
end

puts "created #{Meal.count} meals"
