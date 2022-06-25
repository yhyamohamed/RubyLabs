# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#
require 'faker'
Product.destroy_all
20.times do |i|
  Product.create(
    name: Faker::Food.dish,
    description: Faker::Lorem.sentence(word_count: 10, supplemental: false, random_words_to_add: 0).chop,
    price: 60.03,
  )
end

User.destroy_all
User.create(name: 'yaya ', email:'yaya @iti.com',password:'yaya',password_confirmation:'yaya')

5.times do |i|
  f_name = Faker::Name.first_name
  User.create(
        name: f_name,
         email: Faker::Internet.email(name: f_name),
        password:"yaya_#{i}",
        password_confirmation:"yaya_#{i}"
  )
end

