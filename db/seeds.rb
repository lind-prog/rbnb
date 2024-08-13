# db/seeds.rb

# Supprimer les données existantes pour les tests
User.destroy_all
Offer.destroy_all

user1 = User.create!(email: 'john.doe@example.com', password: 'password123')
user2 = User.create!(email: 'jane.smith@example.com', password: 'password123')

# Créer des offres de test
Offer.create!(
  title: 'VIP Meet and Greet',
  number_of_fan: 10,
  enthusiasm_level: 'High',
  activity: 'Autograph signing',
  price: 100,
  user: user1
)

Offer.create!(
  title: 'Selfie Session',
  number_of_fan: 5,
  enthusiasm_level: 'Moderate',
  activity: 'Selfie session',
  price: 50,
  user: user1
)

Offer.create!(
  title: 'Crowd Cheering',
  number_of_fan: 20,
  enthusiasm_level: 'Very High',
  activity: 'Crowd cheering',
  price: 200,
  user: user2
)

Offer.create!(
  title: 'Event Appearance',
  number_of_fan: 8,
  enthusiasm_level: 'Low',
  activity: 'Event appearance',
  price: 75,
  user: user2
)

puts Offer.count
