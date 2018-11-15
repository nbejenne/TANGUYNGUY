puts 'Cleaning database...'


User.destroy_all
Spot.destroy_all
# Booking.destroy_all
# Feature.destroy_all
# SpotFeature.destroy_all


puts 'Creating seed'



#   User.create

user_attributes = [
{first_name: 'Jacouille',
last_name: 'La Fripouille',
nickname: 'Jakar',
email: 'jacouille@gmail.com',
remote_avatar_url: 'https://images.midilibre.fr/api/v1/images/view/5b4871eb8fe56f24d34ceebe/large/image.jpg',
password:'azerty'},
{first_name: 'Gérard',
last_name: 'Depardieu',
nickname: 'Gégé',
email: 'gérardep@gmail.com',
password:'azerty'}
]

User.create!(user_attributes)

user1 = User.new(
    first_name: 'Dimitri',
    last_name: 'Carieski',
    nickname: 'Dim',
    email: 'dim@gmail.com',
    password: 'azerty',
    )
user2 = User.new(
    first_name: 'Johnny',
    last_name: 'Begood',
    nickname: 'JBG',
    email: 'jbg@gmail.com',
    password: 'azerty',
    )

spots_attributes = [
  {user: user1,
  description: "Garage chauffé avec légère odeur de fioul",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195026/garage-a-vendre-chantonnay-13135893_1_1529961843_10b11fd09b37c650eb0b4239a06b37fa_crop_295-222_.jpg',
  name: 'Garage',
  address: '12 rue de la soif, 75000 Paris'},
  {user: user2,
  description: "Belle petite niche en sapin. Deux gamelles sont à votre disposition en cas de petit creux. Pour votre confort, le chien dormira autre part.",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195027/niche-en-sapin-ontario-1.jpg',
  name: 'Niche',
  address: '35 Rue du Cancera, 33000 Bordeaux'},
  {user: user1,
  description: "Carton 1mx1m, qualité suédoise, tout confort",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195027/Porte-revue_2.jpg',
  name: 'Carton',
  address: '1 rue de la pompe, 75011 Paris'},
  {user: user2,
  description: "Dessous de point mis à disposition par la marie de Paris. Peu de contrôle.",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195027/bridge-962786_1280.jpg',
  name: 'Pont sous périf',
  address: 'Périphérique nord, 75019 Paris'},
  {user: user1,
  description: "Canapé mis à disposition dans mon salon. Accès jet d'eau en extérieur.",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195027/800x800-ouverture-1.jpg',
  name: 'Canapé',
  address: '12 rue des petit ponts, 33000 Bordeaux'},
  {user: user1,
  description: "Garage chauffé avec légère odeur de fioul",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195026/garage-a-vendre-chantonnay-13135893_1_1529961843_10b11fd09b37c650eb0b4239a06b37fa_crop_295-222_.jpg',
  name: 'Garage',
  address: '12 rue de la soif, 75000 Paris'},
  {user: user2,
  description: "Belle petite niche en sapin. Deux gamelles sont à votre disposition en cas de petit creux. Pour votre confort, le chien dormira autre part.",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195027/niche-en-sapin-ontario-1.jpg',
  name: 'Niche',
  address: '35 Rue du Cancera, 33000 Bordeaux'},
  {user: user1,
  description: "Carton 1mx1m, qualité suédoise, tout confort",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195027/Porte-revue_2.jpg',
  name: 'Carton',
  address: '1 rue de la pompe, 75011 Paris'},
  {user: user2,
  description: "Dessous de point mis à disposition par la marie de Paris. Peu de contrôle.",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195027/bridge-962786_1280.jpg',
  name: 'Pont sous périf',
  address: 'Périphérique nord, 75019 Paris'},
  {user: user1,
  description: "Canapé mis à disposition dans mon salon. Accès jet d'eau en extérieur.",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195027/800x800-ouverture-1.jpg',
  name: 'Canapé',
  address: '12 rue des petit ponts, 33000 Bordeaux'},
  {user: user1,
  description: "Garage chauffé avec légère odeur de fioul",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195026/garage-a-vendre-chantonnay-13135893_1_1529961843_10b11fd09b37c650eb0b4239a06b37fa_crop_295-222_.jpg',
  name: 'Garage',
  address: '12 rue de la soif, 75000 Paris'},
  {user: user2,
  description: "Belle petite niche en sapin. Deux gamelles sont à votre disposition en cas de petit creux. Pour votre confort, le chien dormira autre part.",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195027/niche-en-sapin-ontario-1.jpg',
  name: 'Niche',
  address: '35 Rue du Cancera, 33000 Bordeaux'},
  {user: user1,
  description: "Carton 1mx1m, qualité suédoise, tout confort",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195027/Porte-revue_2.jpg',
  name: 'Carton',
  address: '1 rue de la pompe, 75011 Paris'},
  {user: user2,
  description: "Dessous de point mis à disposition par la marie de Paris. Peu de contrôle.",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195027/bridge-962786_1280.jpg',
  name: 'Pont sous périf',
  address: 'Périphérique nord, 75019 Paris'},
  {user: user1,
  description: "Canapé mis à disposition dans mon salon. Accès jet d'eau en extérieur.",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195027/800x800-ouverture-1.jpg',
  name: 'Canapé',
  address: '12 rue des petit ponts, 33000 Bordeaux'}
  ]

Spot.create!(spots_attributes)

feature_attributes = [
{name: 'eau courante',
picto: '*'},
{name: 'electricité',
picto: '*'},
{name: 'wifi',
picto: '*'},
{name: 'TV',
picto: '*'},
{name: 'xbox',
picto: '*'},
{name: 'rechaud',
picto: '*'},
{name: 'serviette',
picto: '*'}
]

Feature.create!(feature_attributes)

spot1 = Spot.new(
  user: user1,
  description: "Garage chauffé avec légère odeur de fioul",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195026/garage-a-vendre-chantonnay-13135893_1_1529961843_10b11fd09b37c650eb0b4239a06b37fa_crop_295-222_.jpg',
  name: 'Garage',
  address: '12 rue de la soif, 75000 Paris')

 bookings_attributes = [
   {user: user1,
    spot: spot1,
    starts_at: '22/11/2018',
    ends_at: '23/11/2018'
   }
 ]


Booking.create!(bookings_attributes)

# Ingredient.create!(ingredients_attributes)
# cocktails_attributes = [
#   { name: 'mojito', url: 'cocktails.jpg' },
#   { name: "ti' punch", url: 'cocktails.jpg' },
#   { name: "White Russian", url: 'cocktails.jpg'}
# ]
# Cocktail.create!(cocktails_attributes)

puts 'Finished!'
