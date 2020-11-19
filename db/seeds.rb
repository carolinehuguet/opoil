# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Walk.destroy_all
Dog.destroy_all
User.destroy_all

# USERS -----------------------------------------------------------------------
puts "Creating users..."
user1 = User.new(
  name: 'Martine',
  city: 'Rennes',
  email: "martine@example.com",
  password: "123456",
  description: "J'aime beaucoup mes chiens et je ne les confie qu'à des personnes de confiance !"
)

user1.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_1.jpg')), filename: 'avatar_1.jpg')
user1.save!

user2 = User.new(
  name: 'Michel',
  city: 'Rennes',
  email: "michel@example.com",
  password: "123456",
  description: "J'aime les chiens, mais pas les promener. Je compte sur vous !"
)

user2.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_2.jpg')), filename: 'avatar_2.jpg')
user2.save!

user3 = User.new(
  name: 'Caro',
  city: 'Rennes',
  email: "caro@example.com",
  password: "123456",
  description: "Mon emploi du temps de développeur full-stack ne me permet pas d'avoir un chien. Mais j'adorerais promener les vôtres !"
)

user3.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_3.png')), filename: 'avatar_3.png')
user3.save!

user4 = User.new(
  name: 'Steven',
  city: 'Rennes',
  email: "steven@example.com",
  password: "123456",
  description: "J'ai honte de mon chien, je préfèrerais sortir avec vos chiens... 😢"
)

user4.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_4.jpg')), filename: 'avatar_4.jpg')
user4.save!

# DOGS ----------------------------------------------------------------------
puts "Creating dogs..."

dog1 = Dog.new(
  name: 'Milou',
  owner: user1,
  breed: 'Fox-terrier',
  rate: 4,
  size: "petit",
  description: "Petit chien très intelligent, peut vous aider à résoudre des enquêtes."
)

dog1.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_1.jpg')), filename: 'dog_pic_1.jpg')
dog1.save!

dog2 = Dog.new(
  name: 'Mimi',
  owner: user1,
  breed: 'Berger allemand',
  rate: 2,
  size: "grand",
  description: "Beau chien docile. Attention, Mimi n'aime pas les chats !"
)

dog2.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_2.jpg')), filename: 'dog_pic_2.jpg')
dog2.save!

dog3 = Dog.new(
  name: 'Beethoven',
  owner: user4,
  breed: 'Caniche nain',
  rate: 3,
  size: "petit",
  description: "Adorable petit caniche ! Beethoven aime les câlins et les enfants."
)

dog3.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_3.jpg')), filename: 'dog_pic_3.jpg')
dog3.save!

dog4 = Dog.new(
  name: 'Fido',
  owner: user2,
  breed: 'Beagle',
  rate: 4,
  size: "moyen",
  description: "Chien gentil"
)

dog4.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_4.jpg')), filename: 'dog_pic_4.jpg')
dog4.save!

dog5 = Dog.new(
  name: 'Pongo',
  owner: user2,
  breed: 'Dalmatien',
  rate: 5,
  size: "grand",
  description: "Magnifique dalmatien. Ne pas transformer en manteau svp !"
)

dog5.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_5.jpg')), filename: 'dog_pic_5.jpg')
dog5.save!

dog6 = Dog.new(
  name: 'Lassie',
  owner: user1,
  breed: 'Colley',
  rate: 5,
  size: "grand",
  description: "Chien fidèle"
)

dog6.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_6.jpg')), filename: 'dog_pic_6.jpg')
dog6.save!


# WALKS -----------------------------------------------------------------------
puts "Creating walks..."

walk1 = Walk.create!(
  date_time: DateTime.new(2020, 11, 5,  10,  0,  0),
  user: user3,
  dog: dog2,
  price: 2,
  status: "pending"
)

walk2 = Walk.create!(
  date_time: DateTime.new(2020, 11, 17,  17,  0,  0),
  user: user4,
  dog: dog5,
  price: 5,
  status: "pending"
)

walk3 = Walk.create!(
  date_time: DateTime.new(2020, 11, 20,  12,  0,  0),
  user: user3,
  dog: dog1,
  price: 4,
  status: "pending"
)

walk4 = Walk.create!(
  date_time: DateTime.new(2020, 11, 20,  18,  0,  0),
  user: user3,
  dog: dog3,
  price: 3,
  status: "pending"
)

walk5 = Walk.create!(
  date_time: DateTime.new(2020, 11, 4,  10,  0,  0),
  user: user3,
  dog: dog3,
  price: 3,
  status: "denied"
)

walk6 = Walk.create!(
  date_time: DateTime.new(2020, 11, 3,  17,  0,  0),
  user: user3,
  dog: dog3,
  price: 3,
  status: "accepted"
)
puts "Finished!"
