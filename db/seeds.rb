puts 'Cleaning database...'


User.destroy_all
Spot.destroy_all
Feature.destroy_all
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
    first_name: 'Patrick',
    last_name: 'Sebastien',
    nickname: 'Patoch',
    email: 'patoch@gmail.com',
    password: 'azerty',
    remote_avatar_url: 'https://resize-pdm.francedimanche.ladmedia.fr/rcrop/635,500/img/2017-05/patrick-sebastien.jpg?version=v1'
    )
user2 = User.new(
    first_name: 'Eric',
    last_name: 'Cantona',
    nickname: 'EC',
    email: 'ec@gmail.com',
    password: 'azerty',
    remote_avatar_url: 'https://i.dailymail.co.uk/i/pix/2009/11/10/article-1226607-072843D4000005DC-843_468x319.jpg'
    )

spots_attributes = [
  {user: user1,
  description: "Garage chauffé avec légère odeur de fuel",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195026/garage-a-vendre-chantonnay-13135893_1_1529961843_10b11fd09b37c650eb0b4239a06b37fa_crop_295-222_.jpg',
  name: 'Garage',
  address: '34 rue de la félicité, 75017 Paris'},
  {user: user2,
  description: "Belle petite niche en sapin. Deux gamelles sont à votre disposition en cas de petit creu. Pour votre confort, le chien dormira autre part.",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195027/niche-en-sapin-ontario-1.jpg',
  name: 'Niche',
  address: '12 rue carnot, 86000 Poitiers'},
  {user: user1,
  description: "Carton 1mx1m, qualité suédoise, tout confort",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195027/Porte-revue_2.jpg',
  name: 'Carton',
  address: '134 cours Victor Hugo, 33000 Bordeaux'},
  {user: user2,
  description: "Dessous de pont mis à disposition par la marie de Paris. Peu de contrôle.",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195027/bridge-962786_1280.jpg',
  name: 'Pont sous périf',
  address: '4 rue godefroy cavaignac, 75011 Paris'},
  {user: user1,
  description: "Canapé mis à disposition dans mon salon. Accès jet d'eau en extérieur.",
  remote_photo_url: 'https://res.cloudinary.com/dzcqmn55q/image/upload/v1542195027/800x800-ouverture-1.jpg',
  name: 'Canapé',
  address: '138 rue sainte catherine, 33000 Bordeaux'}
  ]

Spot.create!(spots_attributes)

# feature_attributes = [
# {name: "running water",
# picto: "<i class='fas fa-tint'></i>"},
# {name: "electricity",
# picto: "<i class='fas fa-bolt'></i>"},
# {name: "wifi",
# picto: "<i class='fas fa-wifi'></i>"},
# {name: "TV",
# picto: "<i class='fas fa-tv'></i>"},
# {name: "xbox",
# picto: "<i class='fab fa-xbox'></i>"},
# {name: "camping spot",
# picto: "<i class='fas fa-campground'></i>"},
# ]

feature_attributes = [
{name: "running water",
picto: "fas fa-tint"},
{name: "electricity",
picto: "fas fa-bolt"},
{name: "wifi",
picto: "fas fa-wifi"},
{name: "TV",
picto: "fas fa-tv"},
{name: "xbox",
picto: "fab fa-xbox"},
{name: "camping spot",
picto: "fas fa-campground"},
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
