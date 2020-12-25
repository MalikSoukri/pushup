# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Profile.destroy_all
Training.destroy_all
puts "Destroyed existing"

User.create!({
  email: "test@email.com",
  password: "123456",
})

puts "Creating profiles"
profiles = Profile.create!([{
  name: "Malik",
  age: 28,
  user: User.last
},
{
  name: "John",
  age: 32,
  user: User.last
  }])
  puts "Creating #{Profile.count} profiles"
  

puts "Creating trainings"
trainings = Training.create!([{
  name: "Vinyassa",
  duration: 60,
  category: "Yoga"
},
{
  name: "Murph",
  duration: 45,
  category: "CrossTraining"
}])
puts "Creating #{Training.count} trainings"