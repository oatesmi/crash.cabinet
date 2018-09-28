require 'faker'

admin_user = User.create!(
  email: 'oatesmi.74@gmail.com',
  password: 'password'
)

10.times do
  User.create!(
    email: Faker::Internet.safe_email,
    password: Faker::Internet.password(8)
  )
end

users = User.all

50.times do
  Doc.create!(
    user: users.sample,
    title: Faker::Lovecraft.deity,
    content: Faker::Lovecraft.paragraphs(6)
  )
end

docs = Doc.all

puts "Seeds finished"
puts "#{User.count} users created"
puts "#{Doc.count} docs created"
