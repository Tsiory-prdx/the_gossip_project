# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
City.destroy_all
User.destroy_all
Gossip.destroy_all
Tag.destroy_all
TagsInGossip.destroy_all

villes = []
for index_city in 0...10
  villes[index_city] = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

users = []
for index_user in 0...10
  age = rand(1..80)
  users[index_user] = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: "description#{index_user}", email: Faker::Internet.email, age: age, city: villes[index_user])
end

gossips = []
for index_gossip in 0...20
  gossips[index_gossip] = Gossip.create(title: "title#{index_gossip}", content: "content#{index_gossip}", user: users[rand(0..9)])
end

tags = []
for index_tag in 0...10
  tags[index_tag] = Tag.create(title: "titletag#{index_tag}")
end

tags_in_gossip = []
for index_tag_in_gossip in 0...10
  tags_in_gossip[index_tag_in_gossip] = TagsInGossip.create(gossip: gossips[rand(0..10)], tag: tags[rand(0..10)])
end

