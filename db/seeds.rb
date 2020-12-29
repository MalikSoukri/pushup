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

puts "creating Plans"
pbooty = Plan.create(name: "Booty & Core", days: 7, category: categories.first)
file = URI.open('https://images.unsplash.com/photo-1594381898411-846e7d193883?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1834&q=80')
pbooty.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pbooty.save!

pbodyweight = Plan.create(name: "Bodyweight Challenge", days: 2, category: categories.first)
file = URI.open('https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
pbodyweight.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pbodyweight.save!

pcrosstraining = Plan.create(name: "CrossTraining", days: 2, category: categories.first)
file = URI.open('https://images.unsplash.com/photo-1546483875-ad9014c88eba?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1874&q=80')
pcrosstraining.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pcrosstraining.save!


procket = Plan.create(name: "Rocket Yoga", days: 7, category: categories.last)
file = URI.open('https://images.unsplash.com/photo-1537544219052-63a0f67778fa?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1834&q=80')
procket.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
procket.save!

pvinyassa = Plan.create(name: "Vinyassa Flow", days: 2, category: categories.last)
file = URI.open('https://images.unsplash.com/photo-1593164842249-d74fc06dae05?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=633&q=80')
pvinyassa.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
pvinyassa.save!

puts "Creating trainings"

kill_it = Training.create!(
  name: "Kill it",
  duration: 60,
  category: "Sweat"
)
file = URI.open('https://images.unsplash.com/photo-1546483875-ad9014c88eba?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1874&q=80')
kill_it.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
kill_it.save!


murph = Training.create!(
name: "Murph",
duration: 45,
category: "Sweat"
)
file = URI.open('https://images.unsplash.com/photo-1576511746123-831cb68bc82f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
murph.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
murph.save!

boxing = Training.create!(
  name: "Boxing & Core",
  duration: 20,
  category: "Sweat"
)
file = URI.open('https://images.unsplash.com/photo-1579191203631-368691293d7a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1350&q=80')
boxing.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
boxing.save!

booty = Training.create!(
  name: "Booty & Core",
  duration: 35,
  category: "Sweat"
)
file = URI.open('https://images.unsplash.com/photo-1565294124524-200bb738cdb7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=794&q=80')
booty.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
booty.save!

back = Training.create!(
  name: "Back Strengh",
  duration: 35,
  category: "Sweat"
)
file = URI.open('https://images.unsplash.com/photo-1565294124524-200bb738cdb7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=794&q=80')
back.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
back.save!

vinyassa = Training.create!(
  name: "Vinyassa",
  duration: 45,
  category: "Flow"
)
file = URI.open('https://images.unsplash.com/photo-1485727749690-d091e8284ef3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80')
vinyassa.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
vinyassa.save!

rocket = Training.create!(
  name: "Rocket Yoga",
  duration: 60,
  category: "Flow"
)
file = URI.open('https://images.unsplash.com/photo-1504886985223-7b2cad64c3ca?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1389&q=80')
rocket.photos.attach(io: file, filename: 'nes.png', content_type: 'image/png')
rocket.save!

puts "Creating #{Training.count} trainings"



puts "creating workout"
Workout.create(plan: Plan.first, training: kill_it)
Workout.create(plan: Plan.first, training: murph)
Workout.create(plan: Plan.first, training: boxing)
Workout.create(plan: Plan.first, training: booty)
Workout.create(plan: Plan.first, training: back)
Workout.create(plan: Plan.first, training: vinyassa)
Workout.create(plan: Plan.first, training: rocket)

puts "Terminé"