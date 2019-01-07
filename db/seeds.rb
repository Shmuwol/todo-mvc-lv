# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.create!([
  {description: "milk", list_id: 1, status: 0},
  {description: "Converse Sneakers", list_id: 1, status: 0},
  {description: "Cholent", list_id: 1, status: 0},
  {description: "a new item", list_id: 2, status: 0},
  {description: "another item", list_id: 2, status: 0}
])
List.create!([
  {name: "Shopping List"},
  {name: "a new list"}
])
