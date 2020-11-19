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

user5 = User.new(
  name: 'Guillaume',
  city: 'La Rochelle',
  email: "guillaume@example.com",
  password: "123456",
  description: "Je préfère les chats mais c'est plus facile de promener des chiens. 😳"
)

user5.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_5.jpg')), filename: 'avatar_5.jpg')
user5.save!

user6 = User.new(
  name: 'Celeste',
  city: 'Rennes',
  email: "celeste@example.com",
  password: "123456",
  description: "Mon mari ne veut pas avoir de chien à la maison donc j'aimerais promener vos chiens pour pouvoir passer un moment agréable en leur compagnie."
)

user6.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_6.jpg')), filename: 'avatar_6.jpg')
user6.save!

user7 = User.new(
  name: 'Brandon',
  city: 'Rennes',
  email: "brandon@example.com",
  password: "123456",
  description: "Je suis toujours sous l'eau donc pas le temps de sortir mon chien."
)

user7.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_7.jpg')), filename: 'avatar_7.jpg')
user7.save!

user8 = User.new(
  name: 'Cécile',
  city: 'Nantes',
  email: "cecile@example.com",
  password: "123456",
  description: "Je n'ai pas le temps de sortir mon chien donc s'il vous plaît prenez soin de mon toutou."
)

user8.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_8.jpg')), filename: 'avatar_8.jpg')
user8.save!

user9 = User.new(
  name: 'Christine',
  city: 'Nantes',
  email: "christine@example.com",
  password: "123456",
  description: "Mon petit chien adore rencontrer de nouvelles personnes."
)

user9.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_9.jpg')), filename: 'avatar_9.jpg')
user9.save!

user10 = User.new(
  name: 'Guillaume',
  city: 'Nantes',
  email: "guillaumeC@example.com",
  password: "123456",
  description: "C'était pas mon choix d'avoir un chien donc le promener me dérange, aidez moi!!!."
)

user10.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_10.jpg')), filename: 'avatar_10.jpg')
user10.save!

user11 = User.new(
  name: 'Jean',
  city: 'Nantes',
  email: "jean@example.com",
  password: "123456",
  description: "J'habite en appartement et je n'ai pas le temps de le sortir aussi souvent que je le voudrais."
)

user11.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_11.jpg')), filename: 'avatar_11.jpg')
user11.save!

user12 = User.new(
  name: 'Lomig',
  city: 'Rennes',
  email: "lomig@example.com",
  password: "123456",
  description: "J'adore l'idée que mon fidèle compagnon puisse partager un moment agréable avec d'autres personnes."
)

user12.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_12.jpg')), filename: 'avatar_12.jpg')
user12.save!

user13 = User.new(
  name: 'Maëlla',
  city: 'Nantes',
  email: "maella@example.com",
  password: "123456",
  description: "Trop de travail."
)

user13.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_13.jpg')), filename: 'avatar_13.jpg')
user13.save!

user14 = User.new(
  name: 'Marek',
  city: 'Rennes',
  email: "marek@example.com",
  password: "123456",
  description: "Je suis très pris dans la création de mon nouveau jeu de société donc j'ai besoin de vous pour sortir mon adorable chien."
)

user14.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_14.jpg')), filename: 'avatar_14.jpg')
user14.save!

user15 = User.new(
  name: 'Nina',
  city: 'Nantes',
  email: "nina@example.com",
  password: "123456",
  description: "Pas le temps de sortir mon toutou, je dois finir mes bières 🍻."
)

user15.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_15.jpg')), filename: 'avatar_15.jpg')
user15.save!

user16 = User.new(
  name: 'Oliver',
  city: 'Rennes',
  email: "oliver@example.com",
  password: "123456",
  description: "Je suis actuellement en formation donc j'ai besoin de vous pour sortir mon chien."
)

user16.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_16.jpg')), filename: 'avatar_16.jpg')
user16.save!

user17 = User.new(
  name: 'Pierre F',
  city: 'Nantes',
  email: "pierref@example.com",
  password: "123456",
  description: "Mes élèves me prennent trop de temps et d'energies, help 🤯."
)

user17.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_17.jpg')), filename: 'avatar_17.jpg')
user17.save!

user18 = User.new(
  name: 'Pierre B',
  city: 'Nantes',
  email: "pierreb@example.com",
  password: "123456",
  description: "Ne pas donner de nourriture à mon chien, il est au régime!"
)

user18.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_18.jpg')), filename: 'avatar_18.jpg')
user18.save!

user19 = User.new(
  name: 'Pierre G',
  city: 'Rennes',
  email: "pierreg@example.com",
  password: "123456",
  description: "Pas envie de promener mon chien, c'est une perte de temps.."
)

user19.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_19.jpg')), filename: 'avatar_19.jpg')
user19.save!

user20 = User.new(
  name: 'Rémy',
  city: 'Rennes',
  email: "remy@example.com",
  password: "123456",
  description: "J'ai envie que mon chien se fasse de nouveaux amis"
)

user20.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_20.jpg')), filename: 'avatar_20.jpg')
user20.save!

user21 = User.new(
  name: 'Briac',
  city: 'Rennes',
  email: "briac@example.com",
  password: "123456",
  description: "La flemme de le sortir.."
)

user21.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_21.jpg')), filename: 'avatar_21.jpg')
user21.save!

user22 = User.new(
  name: 'Cameron',
  city: 'Rennes',
  email: "cameron@example.com",
  password: "123456",
  description: "Mon travail ne me permet pas de le sortir régulièrement."
)

user22.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_22.jpg')), filename: 'avatar_22.jpg')
user22.save!

user23 = User.new(
  name: 'Emile',
  city: 'Rennes',
  email: "emile@example.com",
  password: "123456",
  description: "Mon chien est vraiment très calme et mignonne, je cherche surtout à lui faire passer du bon temps et de se faire des amis. "
)

user23.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_23.jpg')), filename: 'avatar_23.jpg')
user23.save!

user24 = User.new(
  name: 'Jonathan',
  city: 'Rennes',
  email: "jonathan@example.com",
  password: "123456",
  description: "C’est une boulé d’énergie espiègle, qui aime faire des sauts de biche, après ça balle."
)

user24.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_24.jpg')), filename: 'avatar_24.jpg')
user24.save!

user25 = User.new(
  name: 'Hugo',
  city: 'Rennes',
  email: "hugo@example.com",
  password: "123456",
  description: "J'ai juste honte 🥺"
)

user25.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_25.jpg')), filename: 'avatar_25.jpg')
user25.save!

user26 = User.new(
  name: 'JJ',
  city: 'Rennes',
  email: "jj@example.com",
  password: "123456",
  description: "Je sors assez souvent comme ça!"
)

user26.picture.attach(io: File.open(Rails.root.join('db/fixtures/users/avatar_26.jpg')), filename: 'avatar_26.jpg')
user26.save!
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

dog7 = Dog.new(
  name: 'Snuppy',
  owner: user7,
  breed: 'Bulldog anglais',
  rate: 2,
  size: "moyen",
  description: "il n'est pas cloné"
)

dog7.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_7.jpg')), filename: 'dog_pic_7.jpg')
dog7.save!

dog8 = Dog.new(
  name: 'Pluto',
  owner: user8,
  breed: 'Labrador',
  rate: 4,
  size: "grand",
  description: "il adore les souris"
)

dog8.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_8.jpg')), filename: 'dog_pic_8.jpg')
dog8.save!

dog9 = Dog.new(
  name: 'Laïka',
  owner: user9,
  breed: 'Chihuahua',
  rate: 6,
  size: "petit",
  description: "Elle rêve de découvrir les étoiles"
)

dog9.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_9.jpg')), filename: 'dog_pic_9.jpg')
dog9.save!

dog10 = Dog.new(
  name: 'Snoopy',
  owner: user10,
  breed: 'Teckel',
  rate: 2,
  size: "petit",
  description: "Toutou un peu barré qui se prend pour un aviateur"
)

dog10.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_10.jpg')), filename: 'dog_pic_10.jpg')
dog10.save!

dog11 = Dog.new(
  name: 'Balto',
  owner: user11,
  breed: 'Husky',
  rate: 5,
  size: "grand",
  description: "A promener en laisse ou en traineau"
)

dog11.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_11.jpg')), filename: 'dog_pic_11.jpg')
dog11.save!

dog12 = Dog.new(
  name: 'César',
  owner: user12,
  breed: 'Rottweiler',
  rate: 3,
  size: "grand",
  description: "❗️Il va essayer de vous rendre de la nourriture"
)

dog12.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_12.jpg')), filename: 'dog_pic_12.jpg')
dog12.save!

dog13 = Dog.new(
  name: 'Bill',
  owner: user13,
  breed: 'Levrier greyhound',
  rate: 4,
  size: "grand",
  description: "Adore courir"
)

dog13.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_13.jpg')), filename: 'dog_pic_13.jpg')
dog13.save!

dog14 = Dog.new(
  name: 'Toto',
  owner: user14,
  breed: 'Dog allemand',
  rate: 4,
  size: "grand",
  description: "Très bon chien de garde"
)

dog14.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_14.jpg')), filename: 'dog_pic_14.jpg')
dog14.save!

dog15 = Dog.new(
  name: 'Hachiko',
  owner: user25,
  breed: 'Bichon maltais',
  rate: 2,
  size: "petit",
  description: "J'attends toujours que mon maître rentre du travail"
)

dog15.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_15.jpg')), filename: 'dog_pic_15.jpg')
dog15.save!

dog17 = Dog.new(
  name: 'Conan',
  owner: user22,
  breed: 'Chien chinois à crête',
  rate: 8,
  size: "petit",
  description: "A déjà été invité à la maison blanche"
)

dog17.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_17.jpg')), filename: 'dog_pic_17.jpg')
dog17.save!

dog16 = Dog.new(
  name: 'Rintintin',
  owner: user16,
  breed: 'Dobermann',
  rate: 4,
  size: "grand",
  description: "J'ai pas mal de film à mon actif"
)

dog16.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_16.jpg')), filename: 'dog_pic_16.jpg')
dog16.save!

dog18 = Dog.new(
  name: 'Scooby-Doo',
  owner: user17,
  breed: 'Cavalier King Charles',
  rate: 3,
  size: "petit",
  description: "chien peureux"
)

dog18.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_18.jpg')), filename: 'dog_pic_18.jpg')
dog18.save!

dog19 = Dog.new(
  name: 'Chaser',
  owner: user18,
  breed: 'Border collie',
  rate: 6,
  size: "moyen",
  description: "chien intelligent"
)

dog19.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_19.jpg')), filename: 'dog_pic_19.jpg')
dog19.save!

dog20 = Dog.new(
  name: 'Idéfix',
  owner: user19,
  breed: 'Spitz nain',
  rate: 2,
  size: "petit",
  description: "chien rusé avec un flair infaillible."
)

dog20.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_20.jpg')), filename: 'dog_pic_20.jpg')
dog20.save!

dog21 = Dog.new(
  name: 'Lump',
  owner: user26,
  breed: 'Bouvier bernois',
  rate: 5,
  size: "grand",
  description: "A révolutionné le monde de l’art."
)

dog21.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_21.jpg')), filename: 'dog_pic_21.jpg')
dog21.save!

dog22 = Dog.new(
  name: 'Alfred',
  owner: user20,
  breed: 'Setter irlandais rouge',
  rate: 3,
  size: "grand",
  description: "Aime les longues balades en bord de mer."
)

dog22.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_22.jpg')), filename: 'dog_pic_22.jpg')
dog22.save!

dog23 = Dog.new(
  name: 'Fifi',
  owner: user21,
  breed: 'Terre-neuve',
  rate: 3,
  size: "grand",
  description: "Elle n'est pas facile avec les autres chiens."
)

dog23.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_23.jpg')), filename: 'dog_pic_23.jpg')
dog23.save!

dog24 = Dog.new(
  name: 'Lucky',
  owner: user5,
  breed: 'Dalmatien',
  rate: 6,
  size: "grand",
  description: "Il adore regarder la télé."
)

dog24.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_24.jpg')), filename: 'dog_pic_24.jpg')
dog24.save!

dog25 = Dog.new(
  name: 'Chabadaa',
  owner: user15,
  breed: 'Batard',
  rate: 2,
  size: "moyen",
  description: "Il est dynamique il adore jouer et faire des bisous à tout le monde"
)

dog25.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_25.jpg')), filename: 'dog_pic_25.jpg')
dog25.save!

dog26 = Dog.new(
  name: 'Marley',
  owner: user23,
  breed: 'Saint bernard',
  rate: 4,
  size: "grand",
  description: "Elle est très calme et gentille, mais elle est TRES craintive avec les inconnus."
)

dog26.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_26.jpg')), filename: 'dog_pic_26.jpg')
dog26.save!

dog27 = Dog.new(
  name: 'Michka',
  owner: user24,
  breed: 'Chow-chow',
  rate: 3,
  size: "moyen",
  description: "Vraiment très calme et mignonne."
)

dog27.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_27.jpg')), filename: 'dog_pic_27.jpg')
dog27.save!

dog28 = Dog.new(
  name: 'Ragnard',
  owner: user11,
  breed: 'American Staff',
  rate: 5,
  size: "grand",
  description: "Très affectueux."
)

dog28.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_28.jpg')), filename: 'dog_pic_28.jpg')
dog28.save!

dog31 = Dog.new(
  name: 'Patapouff',
  owner: user25,
  breed: 'Shar-peï',
  rate: 3,
  size: "moyen",
  description: "Il aime manger des madeleines et du jambon."
)

dog31.picture.attach(io: File.open(Rails.root.join('db/fixtures/dogs/dog_pic_31.jpg')), filename: 'dog_pic_31.jpg')
dog31.save!


# WALKS -----------------------------------------------------------------------
puts "Creating walks..."

walk1 = Walk.create!(
  date_time: DateTime.new(2020, 11, 5,  10,  0,  0),
  user: user3,
  dog: dog2,
  status: "accepted",
  price: 2
)

walk2 = Walk.create!(
  date_time: DateTime.new(2020, 11, 17,  17,  0,  0),
  user: user4,
  dog: dog5,
  status: "denied",
  price: 5
)

walk3 = Walk.create!(
  date_time: DateTime.new(2020, 11, 20,  12,  0,  0),
  user: user3,
  dog: dog1,
  status: "accepted",
  price: 4
)

walk4 = Walk.create!(
  date_time: DateTime.new(2020, 11, 20,  18,  0,  0),
  user: user3,
  dog: dog3,
  status: "denied",
  price: 3
)

walk5 = Walk.create!(
  date_time: DateTime.new(2020, 11, 4,  10,  0,  0),
  user: user3,
  dog: dog3,
  status: "accepted",
  price: 3
)

walk6 = Walk.create!(
  date_time: DateTime.new(2020, 11, 3,  17,  0,  0),
  user: user3,
  dog: dog3,
  status: "accepted",
  price: 3
)

puts "Finished!"
