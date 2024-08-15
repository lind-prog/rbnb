# db/seeds.rb

# Supprimer les données existantes pour les tests
User.destroy_all

# Créer des utilisateurs de test
user1 = User.create!(email: 'john.doe@example.com', password: 'password123')
user2 = User.create!(email: 'jane.smith@example.com', password: 'password123')

Offer.create!(
  title: 'VIP Meet and Greet',
  number_of_fan: 10,
  enthusiasm_level: 'Hysteric',
  activity: 'Autograph signing',
  price: 100,
  user: user1,
  image_url: 'https://th.bing.com/th/id/OIG2.4HiRdYeKHwj43JxLj4CR?w=1024&h=1024&rs=1&pid=ImgDetMain',
  localisation: 'Bordeaux',
  description: 'Step into the spotlight with a VIP Meet and Greet in Bordeaux. Sign autographs for 10 hysteric fans and experience the thrill of stardom.'
)

puts Offer.count
