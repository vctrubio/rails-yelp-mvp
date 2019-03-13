# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St',
    phone_number:  '123',
    category:      'french'
  },
  {
    name:         'Lockroom',
    address:      '2 Boundary St',
    phone_number:  '123',
    category:      'belgian'
  },
  {
    name:         'Dishwash',
    address:      '1 Boundary St',
    phone_number:  '123',
    category:      'belgian'
  },
  {
    name:         'Fungi',
    address:      '9 Boundary St',
    phone_number:  '123',
    category: 'japanese'
  },
  {
    name:         'Prop',
    address:      '8 Boundary St',
    phone_number:  '123',
    category:       "italian"
  }
]
  Restaurant.create!(restaurants_attributes)
