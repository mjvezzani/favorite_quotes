# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(name: "Mike Vezzani", password: "foobar", password_confirmation: "foobar")
Quote.create!(text: "Like a rock", author: "Chevrolet")
Quote.create!(text: "Built Ford Tough", author: "Ford")
Quote.create!(text: "Nothing can stop a Trane", author: "Trane")
Quote.create!(text: "Let's build something together", author: "Lowes")
Quote.create!(text: "Nutrition for sustained energy", author: "Cliff Bar")
