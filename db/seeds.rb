# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroyed existing"
Profile.destroy_all
User.destroy_all
Workout.destroy_all
Plan.destroy_all
Training.destroy_all
Category.destroy_all


puts "Creating profiles"
User.create!({
  email: "test@email.com",
  password: "123456",
})
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
  
puts "Creating category"
categories = Category.create!([{name: "Sweat"},{name: "Flow"}])

puts "Creating trainings"
trainings = Training.create!([{
  name: "Kill it",
  duration: 60,
  category: "Upper Body"
},
{
  name: "Murph",
  duration: 45,
  category: "Full Body"
},
{
  name: "Pullup",
  duration: 20,
  category: "Bodyweight"
},])
puts "Creating #{Training.count} trainings"

puts "creating Plans"
Plan.create(name: "averroes", days: 7, category: categories.first)
Plan.create(name: "ibnbatouta", days: 2, category: categories.first)

puts "creating workout"
Workout.create(plan: Plan.first, training: trainings.first)
Workout.create(plan: Plan.first, training: trainings.last)
puts "Terminé"