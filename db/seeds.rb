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
  points: rand(200..700)
  })
  avatar1 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1686689244/130916139_btonix.jpg")
  user1.photo.attach(io: avatar1, filename:"Mon avatar1")
  user1.save!

user2 = User.new({
  email: "jo@gmail.com",
  password: "123456",
  first_name: "Jo",
  last_name: "Magt",
  nickname: "Jo",
  birth_date: "05/08/1992",
  points: rand(200..700)
  })
  avatar2 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1686689244/126069860_mlgmoq.jpg")
  user2.photo.attach(io: avatar2, filename:"Mon avatar2")
  user2.save!

user3 = User.new({
  email: "kenza@gmail.com",
  password: "123456",
  first_name: "Kenza",
  last_name: "Bouachik",
  nickname: "Kenza",
  birth_date: "05/08/1992",
  points: rand(200..700)
  })
  avatar3 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1686689245/130972436_q7tvag.png")
  user3.photo.attach(io: avatar3, filename:"Mon avatar3")
  user3.save!

user4 = User.new({
  email: "Mathieu@gmail.com",
  password: "123456",
  first_name: "Mathieu",
  last_name: "Jelsch",
  nickname: "Le M",
  birth_date: "05/08/1992",
  points: rand(200..700)
  })
  avatar4 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1686689244/130673218_bxss3f.jpg")
  user4.photo.attach(io: avatar4, filename:"Mon avatar4")
  user4.save!

user5 = User.new({
  email: "guga@gmail.com",
  password: "123456",
  first_name: "gustavo",
  last_name: "k",
  nickname: "Guga",
  birth_date: "05/08/1992",
  points: 567
  })
  avatar5 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1686689245/AVT_Gustavo-Kuerten_6590_lyxwbu.webp")
  user5.photo.attach(io: avatar5, filename:"Mon avatar5")
  user5.save!

user6 = User.new({
  email: "roger@gmail.com",
  password: "123456",
  first_name: "Roger",
  last_name: "F",
  nickname: "Roger",
  birth_date: "05/08/1992",
  points: 591
  })
  avatar6 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1686689244/rsvaohjon8dsruqoz9tf_tluqjn.webp")
  user6.photo.attach(io: avatar6, filename:"Mon avatar6")
  user6.save!

user7 = User.new({
  email: "rafa@gmail.com",
  password: "123656",
  first_name: "Rafael",
  last_name: "N",
  nickname: "Rafa",
  birth_date: "05/08/1992",
  points: 645
  })
  avatar7 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1686689244/7143728-rafael-nadal-fait-tomber-le-tenant-du-ti-300x300-2_y9gbgr.jpg")
  user7.photo.attach(io: avatar7, filename:"Mon avatar7")
  user7.save!

user8 = User.new({
  email: "doko@gmail.com",
  password: "123456",
  first_name: "Novak",
  last_name: "K",
  nickname: "Djoko",
  birth_date: "05/08/1992",
  points: 720
  })
  avatar8 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1686689244/1413_qsplps.jpg")
  user8.photo.attach(io: avatar8, filename:"Mon avatar8")
  user8.save!

user9 = User.new({
  email: "pete@gmail.com",
  password: "123456",
  first_name: "Pete",
  last_name: "S",
  nickname: "Sampras",
  birth_date: "05/08/1992",
  points: rand(200..700)
  })
  avatar9 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1686689244/pete-sampras-1_aaab0b.webp")
  user9.photo.attach(io: avatar9, filename:"Mon avatar9")
  user9.save!

user10 = User.new({
  email: "andre@gmail.com",
  password: "123456",
  first_name: "Andre",
  last_name: "Agassi",
  nickname: "Agassi",
  birth_date: "05/08/1992",
  points: rand(200..700)
  })
  avatar10 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1686689244/andre-agassi-3_gwtvjp.jpg")
  user10.photo.attach(io: avatar10, filename:"Mon avatar10")
  user10.save!

user11 = User.new({
  email: "serena@gmail.com",
  password: "123456",
  first_name: "Serena",
  last_name: "W",
  nickname: "Serena",
  birth_date: "05/08/1992",
  points: rand(200..700)
  })
  avatar11 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1686689245/2596890-serena-williams-pendant-l-us-open-2016-a-300x300-1_sec2fx.webp")
  user11.photo.attach(io: avatar11, filename:"Mon avatar11")
  user11.save!

user12 = User.new({
  email: "maria@gmail.com",
  password: "123456",
  first_name: "Maria",
  last_name: "S",
  nickname: "Maria",
  birth_date: "05/08/1992",
  points: rand(200..700)
  })
  avatar12 = URI.open("https://res.cloudinary.com/di7aefgt3/image/upload/v1686689244/27076_fef9au.webp")
  user12.photo.attach(io: avatar12, filename:"Mon avatar12")
  user12.save!

match1 = Match.new({
  address: "68 Avenue Parmentier, 75011, Paris",
  match_type: "Défi",
  modality: "Simple",
  price: "10",
  level: "500",
  date: DateTime.now
})
match1.user = user1
match1.save!

match2 = Match.new({
  address: "9 Avenue Marceau, 75008 Paris",
  match_type: "Amical",
  modality: "Simple",
  price: "15",
  level: "700",
  date: (DateTime.now + 2)
})
match2.user = user2
match2.save!

match3 = Match.new({
  address: "8 Rue du Bac, 75007 Paris",
  match_type: "Amical",
  modality: "Simple",
  price: "6",
  level: "200",
  date: (DateTime.now + 1)
})
match3.user = user3
match3.save!

match4 = Match.new({
  address: "3 Rue de Lappe, 75011 Paris",
  match_type: "Défi",
  modality: "Simple",
  price: "10",
  level: "400",
  date: (DateTime.now + 1)
})
match4.user = user4
match4.save!

match5 = Match.new({
  address: "2 Rue de Charonne, 75011 Paris",
  match_type: "Amical",
  modality: "Simple",
  price: "20",
  level: "400",
  date: (DateTime.now + 1)
})
match5.user = user5
match5.save!

match6 = Match.new({
  address: "7 Rue Sedaine, 75011 Paris",
  match_type: "Amical",
  modality: "Simple",
  price: "5",
  level: "600",
  date: (DateTime.now + 2)
})
match6.user = user6
match6.save!

match7 = Match.new({
  address: "10 Rue des Rosiers, 75004 Paris",
  match_type: "Défi",
  modality: "Simple",
  price: "12",
  level: "700",
  date: (DateTime.now + 1)
})
match7.user = user7
match7.save!

match8 = Match.new({
  address: "6 Rue Saint-Honoré, 75001 Paris",
  match_type: "Défi",
  modality: "Simple",
  price: "10",
  level: "500",
  date: (DateTime.now + 1)
})
match8.user = user8
match8.save!

match9 = Match.new({
  address: "4 Rue Oberkampf, 75011 Paris",
  match_type: "Défi",
  modality: "Simple",
  price: "10",
  level: "550",
  date: (DateTime.now + 2)
})
match9.user = user9
match9.save!

request1 = Request.new(status: 0, match_id: match1.id, user_id: user2.id)
request1.save!

request2 = Request.new(status: 0, match_id: match2.id, user_id: user1.id)
request2.save!

# league1 = League.new(name: "Monde", user_id: user2.id)
# league1.image = "icon2.png"
# league1.save!


league2 = League.new(name: "Paris", user_id: user1.id)
league2.image = "icon3.png"
league2.save!


membership1 = Membership.new(user_id: user1.id, league_id: league1.id)
membership1.save!


membership2 = Membership.new(user_id: user2.id, league_id: league2.id)
membership2.save!

membership3 = Membership.new(user_id: user1.id, league_id: league2.id)
membership3.save!
