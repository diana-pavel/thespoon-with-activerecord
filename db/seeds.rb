# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

Restaurant.create!(name: 'Amarelina', stars: 5, address: 'Glooooooooria', description: 'There\'s food')
Restaurant.create!(name: 'KFC', stars: 5, address: 'Centro', description: 'There\'s chicken?')
Restaurant.create!(name: 'Karolina', stars: 3, address: 'Glooooooooria', description: 'It\'s good quality')
