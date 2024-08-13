# db/seeds.rb

# Supprimer les données existantes pour les tests
User.destroy_all

# Créer des utilisateurs de test
user1 = User.create!(email: 'john.doe@example.com', password: 'password123')
user2 = User.create!(email: 'jane.smith@example.com', password: 'password123')

Offer.create!(
  title: 'VIP Meet and Greet',
  number_of_fan: 10,
  enthusiasm_level: 'High',
  activity: 'Autograph signing',
  price: 100,
  user: user1,
  image_url: 'https://th.bing.com/th/id/OIG2.4HiRdYeKHwj43JxLj4CR?w=1024&h=1024&rs=1&pid=ImgDetMain'
)

Offer.create!(
  title: 'Selfie Session',
  number_of_fan: 5,
  enthusiasm_level: 'Moderate',
  activity: 'Selfie session',
  price: 50,
  user: user1,
  image_url: 'https://th.bing.com/th/id/OIG2.W7UkydftC8As.7iFmCWA?pid=ImgGn'
)

Offer.create!(
  title: 'Crowd Cheering',
  number_of_fan: 20,
  enthusiasm_level: 'Very High',
  activity: 'Crowd cheering',
  price: 200,
  user: user2,
  image_url: 'https://th.bing.com/th/id/OIG1.VGDfQevFuQwm0r3I.XcL?pid=ImgGn'
)

Offer.create!(
  title: 'Event Appearance',
  number_of_fan: 8,
  enthusiasm_level: 'Low',
  activity: 'Event appearance',
  price: 75,
  user: user2,
  image_url: 'https://th.bing.com/th/id/OIG1._AFoT9_TX_UI2arr7SSh?pid=ImgGn'
)

puts Offer.count
