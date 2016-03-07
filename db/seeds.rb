# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Course.create!(name: "Appetizer", id:1)
Course.create!(name: "Soup or Salad", id:2)
Course.create!(name: "Entree", id:3)
Course.create!(name: "Dessert", id:4)
