# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require "date"

League.destroy_all
Request.destroy_all
Match.destroy_all
Message.destroy_all
Chatroom.destroy_all
UserChatroom.destroy_all
User.destroy_all
Membership.destroy_all


user1 = User.new({
  email: "ricardo@gmail.com",
  password: "123456",
  first_name: "Ricardo",
  last_name: "Martins",
  nickname:"Ricky",
  birth_date: "05/07/1992",
  points: 440
  })
  avatar1 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1685109281/samples/people/kitchen-bar.jpg")
  user1.photo.attach(io: avatar1, filename:"Mon avatar1")
  user1.save!

user2 = User.new({
  email: "jo@gmail.com",
  password: "123456",
  first_name: "Jo",
  last_name: "Magt",
  nickname: "Jo",
  birth_date: "05/08/1992",
  points: 200
  })
  avatar2 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1685109285/samples/people/boy-snow-hoodie.jpg")
  user2.photo.attach(io: avatar2, filename:"Mon avatar2")
  user2.save!

user3 = User.new({
  email: "kenza@gmail.com",
  password: "123456",
  first_name: "Kenza",
  last_name: "Bouachik",
  nickname: "Kenza",
  birth_date: "05/08/1992",
  points: 340
  })
  avatar3 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1685109280/samples/animals/cat.jpg")
  user3.photo.attach(io: avatar3, filename:"Mon avatar3")
  user3.save!

user4 = User.new({
  email: "Mathieu@gmail.com",
  password: "123456",
  first_name: "Mathieu",
  last_name: "Jelsch",
  nickname: "Le M",
  birth_date: "05/08/1992",
  points: 360
  })
  avatar4 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1685109283/samples/people/smiling-man.jpg")
  user4.photo.attach(io: avatar4, filename:"Mon avatar4")
  user4.save!

match1 = Match.new({
  address: "68 Avenue Parmentier, Paris",
  match_type: "Défi",
  modality: "simple",
  price: "10",
  level: "500",
  date: DateTime.now
})
match1.user = user1
match1.save!


match2 = Match.new({
  address: "56 rue oberkampf, Paris",
  match_type: "amical",
  modality: "simple",
  price: "67",
  level: "1000",
  date: (DateTime.now + 2)
})
match2.user = user2
match2.save!


match3 = Match.new({
  address: " 3 rue Gabriel Péri, Houilles",
  match_type: "amical",
  modality: "simple",
  price: "50",
  level: "50",
  date: (DateTime.now + 1)
})
match3.user = user3
match3.save!

request1 = Request.new(status: 0, match_id: match1.id, user_id: user2.id)
request1.save!

request2 = Request.new(status: 0, match_id: match2.id, user_id: user1.id)
request2.save!



league1 = League.new(name: "Monde", user_id: user2.id)
league1.image = "icon2.png"
league1.save!


league2 = League.new(name: "Paris", user_id: user1.id)
league2.image = "icon3.png"
league2.save!


membership1 = Membership.new(user_id: user1.id, league_id: league1.id)
membership1.save!


membership2 = Membership.new(user_id: user2.id, league_id: league2.id)
membership2.save!

membership3 = Membership.new(user_id: user1.id, league_id: league2.id)
membership3.save!
