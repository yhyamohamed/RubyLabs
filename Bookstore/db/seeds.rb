
require 'faker'

User.destroy_all

User.create(name: 'yaya', email:'yaya@iti.com',password:'yaya',password_confirmation:'yaya')

5.times do |i|
  f_name = Faker::Name.first_name
  User.create(
    name: f_name,
    email: Faker::Internet.email(name: f_name),
    password:"yaya_#{i}",
    password_confirmation:"yaya_#{i}"
  )
end
Product.destroy_all
20.times do |i|
  Product.create(
    name: Faker::Food.dish,
    description: Faker::Lorem.sentence(word_count: 10, supplemental: false, random_words_to_add: 0).chop,
    price: 60.03,
    user_id:1
  )
end



