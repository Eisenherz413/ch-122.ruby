# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# enum categories
Category.create(name: 0, description: 'You can leave a word of advice in this section, help us to become even better!')
Category.create(name: 1, description: 'In this section you can report any kind of breakdown in your room')
Category.create(name: 2, description: 'If you have something you want us to react quickly, please type it here')
Category.create(name: 3, description: '')
