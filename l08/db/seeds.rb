# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p = Player.new
p.name = 'Эмануэль'
p.lastname = 'Ласкер'
p.birth_year = 1868
p.death_year = 1941
p.save

Player.create(name: 'Александр', lastname: 'Алехин', birth_year: 1892, death_year: 1946)