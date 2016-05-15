# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
u1 = User.where(name: "Cheer Bear", number_of_kills: "1", is_alive: true).first_or_create
u2 = User.where(name: "Sleepy Bear", number_of_kills: "0", is_alive: true).first_or_create
u3 = User.where(name: "Tenderheart Bear", number_of_kills: "0", is_alive: true).first_or_create
u4 = User.where(name: "Lucky Bear", number_of_kills: "0", is_alive: false).first_or_create
u5 = User.where(name: "Angry Bear", number_of_kills: "0", is_alive: false).first_or_create

Weapon.destroy_all
w1 = Weapon.where(name: "rainbows").first_or_create
w2 = Weapon.where(name: "clouds").first_or_create
w3 = Weapon.where(name: "love").first_or_create
w4 = Weapon.where(name: "leaf").first_or_create
w5 = Weapon.where(name: "water").first_or_create

Friendship.destroy_all
Friendship.where(killer_id: u1.id, victim_id: u2.id, weapon_id: w1.id).first_or_create
Friendship.where(killer_id: u2.id, victim_id: u3.id, weapon_id: w2.id).first_or_create
Friendship.where(killer_id: u3.id, victim_id: u1.id, weapon_id: w3.id).first_or_create
Friendship.where(killer_id: u1.id, victim_id: u4.id, weapon_id: w4.id).first_or_create
Friendship.where(killer_id: u5.id, victim_id: u1.id, weapon_id: w5.id).first_or_create
