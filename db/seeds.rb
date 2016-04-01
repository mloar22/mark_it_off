# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 require 'faker'

 #create Users
 5.times do
    user = User.new(
      name:     Faker::Name.name,
      email:    Faker::Internet.email,
      password: Faker::Lorem.characters(10)
    )
    user.skip_confirmation!
    user.save!
  end
  users = User.all

#creates Items
15.times do
  item = Item.create!(
    user: users.sample,
    name: Faker::Lorem.characters(6)
  )
end
items = Item.all



puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
