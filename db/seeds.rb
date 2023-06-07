# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require "date"

Request.destroy_all
Match.destroy_all
User.destroy_all


avatar1 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1686046771/avatar-de-personne-icone-homme_rznm1h.png")
avatar2 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1686046772/avatar-de-personne-icone-femme_kqiadz.png")

user1 = User.new({
  email: "ricardo@gmail.com",
  password: "123456",
  first_name: "Ricardo",
  last_name: "Martins",
  nickname:"Ricky",
  birth_date: "05/07/1992"
})
user1.photo.attach(io: avatar1, filename:"Mon avatar1")
user1.save!

user2 = User.new({
  email: "jo@gmail.com",
  password: "123456",
  first_name: "Jo",
  last_name: "Magt",
  nickname: "Jo",
  birth_date: "05/08/1992"
})
user2.photo.attach(io: avatar2, filename:"Mon avatar2")
user2.save!

match1 = Match.new({
  address: "21 rue lépante Nice",
  match_type: "challenge",
  modality: "simple",
  price: "10",
  level: "500",
  date: "05/08/2023"
})
match1.user = user1
match1.save!

match2 = Match.new({
  address: "56 rue lépante PARIS",
  match_type: "challenge",
  modality: "simple",
  price: "67",
  level: "1000",
  date: "10/08/2056"
})
match2.user = user2
match2.save!

request1 = Request.new(status: 0, match_id: match1.id, user_id: user2.id)
request1.save!

request2 = Request.new(status: 0, match_id: match2.id, user_id: user1.id)
request2.save!
