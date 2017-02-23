# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[User, Team, Request].each(&:destroy_all)

 u1 = User.create!(email: 'musty@musty.com', password: 'password', password_confirmation: 'password', profile_img: 'http://i.imgur.com/g5vowVL.jpg', first_name: 'Muhammad', last_name: 'Miah', username: 'Musty')
 u2 = User.create!(email: 'johnnie@johnnie.com', password: 'password', password_confirmation: 'password', profile_img: 'http://fillmurray.com/300/300', first_name: 'Johnnie', last_name: 'dLM', username: 'JohnnySanchez')
 u3 = User.create!(email: 'cristiano@ronaldo.com', password: 'password', password_confirmation: 'password', profile_img: 'http://fillmurray.com/400/400', first_name: 'cristiano', last_name: 'ronaldo', username: 'Ronaldo7')
 u4 = User.create!(email: 'danesh@madarbakus.com', password: 'password', password_confirmation: 'password', profile_img: 'http://fillmurray.com/500/500', first_name: 'Danesh', last_name: 'Madarbakus', username: 'TheNextHenry')

t1 = u1.teams.create!(name: 'Musty FC', vacant_spots: 3)
t2 = u2.teams.create!(name: 'Johnnie FC', vacant_spots: 2)
t3 = u4.teams.create!(name: 'Jim FC', vacant_spots: 2)

u3.requests.create!(team_id: t2.id)
u4.requests.create!(team_id: t1.id)
u2.requests.create!(team_id: t1.id)
