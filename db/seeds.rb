# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

Perfume.destroy_all

path = File.join(File.dirname(__FILE__), "perfume_data.json")
file = File.read(path)
json = JSON.parse(file)
Perfume.create(json.values.first)
# byebug
# 0
