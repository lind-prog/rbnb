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

Offer.create!(
  title: 'Selfie Session',
  number_of_fan: 5,
  enthusiasm_level: 'Devoted',
  activity: 'Selfie session',
  price: 50,
  user: user1,
  image_url: 'https://th.bing.com/th/id/OIG2.W7UkydftC8As.7iFmCWA?pid=ImgGn',
  localisation: 'Marseille',
  description: 'Shine like a star in Marseille with an exclusive selfie session. Pose with 5 devoted fans and capture the perfect moment for just €50.'
)

Offer.create!(
  title: 'Crowd Cheering',
  number_of_fan: 20,
  enthusiasm_level: 'Hysteric',
  activity: 'Crowd cheering',
  price: 200,
  user: user2,
  image_url: 'https://th.bing.com/th/id/OIG1.VGDfQevFuQwm0r3I.XcL?pid=ImgGn',
  localisation: 'London',
  description: 'Feel the energy of the crowd in London as 20 hysteric fans cheer you on. Embrace the excitement and live like a star.'
)

Offer.create!(
  title: 'Event Appearance',
  number_of_fan: 8,
  enthusiasm_level: 'Modest',
  activity: 'Event appearance',
  price: 75,
  user: user2,
  image_url: 'https://th.bing.com/th/id/OIG1._AFoT9_TX_UI2arr7SSh?pid=ImgGn',
  localisation: 'Milan',
  description: 'Make a memorable event appearance in Milan with 8 modest fans. Enjoy the spotlight and the unique experience for only €75.'
)

puts Offer.count
