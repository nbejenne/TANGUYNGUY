puts 'Cleaning database...'


User.destroy_all
Spot.destroy_all
# Booking.destroy_all
# Feature.destroy_all
# SpotFeature.destroy_all


puts 'Creating seed'



#   User.create!

spots_attributes = [
  user: User.new(
    first_name: 'roger',
    last_name: 'La bouteille',
    nickname: 'Gégé',
    email: 'gege@gege.com',
    password: 'azerti',
    ),
  description: "Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.",
  photo: 'https://selfpackaging.fr/32197-imagenes_complementos/petite-maison-en-carton.jpg',
  name: 'ma petite maison de papier',
  address: '35 Rue du Cancera, 33000 Bordeaux'
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
# Ingredient.create!(ingredients_attributes)
# cocktails_attributes = [
#   { name: 'mojito', url: 'cocktails.jpg' },
#   { name: "ti' punch", url: 'cocktails.jpg' },
#   { name: "White Russian", url: 'cocktails.jpg'}
# ]
# Cocktail.create!(cocktails_attributes)

puts 'Finished!'
