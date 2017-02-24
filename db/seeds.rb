# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[User, Team, Request].each(&:destroy_all)

u1 = User.create!(email: 'musty@musty.com', password: 'password', password_confirmation: 'password', profile_img: 'http://i.imgur.com/g5vowVL.jpg', first_name: 'Muhammad', last_name: 'Miah', username: 'Musty')
u2 = User.create!(email: 'johnnie@johnnie.com', password: 'password', password_confirmation: 'password', profile_img: 'http://i.imgur.com/A69j2Iw.png', first_name: 'Johnnie', last_name: 'dLM', username: 'JohnnySanchez')
u3 = User.create!(email: 'cristiano@ronaldo.com', password: 'password', password_confirmation: 'password', profile_img: 'https://static.independent.co.uk/s3fs-public/thumbnails/image/2016/06/03/08/cristiano-ronaldo.jpg', first_name: 'cristiano', last_name: 'ronaldo', username: 'Ronaldo7')
u4 = User.create!(email: 'danesh@madarbakus.com', password: 'password', password_confirmation: 'password', profile_img: 'http://i.imgur.com/5jkbnG2.jpg', first_name: 'Danesh', last_name: 'Madarbakus', username: 'TheNextHenry')

u5 = User.create!(email: 'choppa@molloy.com', password: 'password', password_confirmation: 'password', profile_img: 'http://i.imgur.com/SIjOCoN.png', first_name: 'Choppa', last_name: 'molloy', username: 'BigChoppa')

u6 = User.create!(email: 'tom@tom.com', password: 'password', password_confirmation: 'password', profile_img: 'http://i.imgur.com/lQf63OL.jpg', first_name: 'Tom', last_name: 'duck', username: 'Tomidinho')



t1 = u1.teams.create!(name: 'Musty FC', vacant_spots: 3)
t2 = u2.teams.create!(name: 'Johnnie FC', vacant_spots: 2)
t3 = u4.teams.create!(name: 'General Assembly FC', vacant_spots: 4)

u3.requests.create!(team_id: t2.id)
u4.requests.create!(team_id: t1.id)
u2.requests.create!(team_id: t1.id)
