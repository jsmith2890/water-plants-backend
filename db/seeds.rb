# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Plant.destroy_all
User.destroy_all

user1 = User.create(username: 'Janet')
user2 = User.create(username: 'Bill')
user3 = User.create(username: 'Bess')

plants = [
  {
    nick_name: 'Phil',
    name: 'Fiddle Leaf Fig',
    days_between_watering: '7 days',
    user_id: user1.id
  },
  {
    nick_name: 'Walter',
    name: 'Snake Plant',
    days_between_watering: '14 days',
    user_id: user1.id
  },
  {
    nick_name: 'Tina',
    name: 'Money Tree',
    days_between_watering: '14 days',
    user_id: user1.id
  },
  {
    nick_name: 'Linda',
    name: "Bird's Nest Fern",
    days_between_watering: '3 days',
    user_id: user2.id
  },
  {
    nick_name: 'Mable',
    name: 'Croton',
    days_between_watering: '6 days',
    user_id: user2.id
  },
  {
    nick_name: 'Janet',
    name: 'Bell Pepper Plant',
    days_between_watering: '3 days',
    user_id: user3.id
  },
  {
    nick_name: 'Fran',
    name: 'Strawberry Plant',
    days_between_watering: '3 days',
    user_id: user2.id
  },
  {
    nick_name: 'Dick',
    name: 'Dracaena',
    days_between_watering: '14 days',
    user_id: user1.id
  },
  {
    nick_name: 'Bob',
    name: 'Spider Plant',
    days_between_watering: '7 days',
    user_id: user1.id
  },
  {
    nick_name: 'Phil',
    name: 'Jade',
    days_between_watering: '14 days',
    user_id: user3.id
  },
  { nick_name: 'Frank',
    name: 'Wavy Fern',
    days_between_watering: '2 days',
    user_id: user2.id }
]

plants.each { |plant| Plant.create(plant) }

puts 'seeded'
