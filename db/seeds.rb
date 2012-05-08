# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Seeding Manufacturer Data"

# Manufacturer.create(name: "", abbreviation: "")
Manufacturer.create(name: "Alaska Bullet Company", abbreviation: "AK")
Manufacturer.create(name: "Barnes", abbreviation: "BAR")
Manufacturer.create(name: "Berger", abbreviation: "BRGR")
Manufacturer.create(name: "Berry's", abbreviation: "BRY")
Manufacturer.create(name: "Cast Performance", abbreviation: "CP")
Manufacturer.create(name: "Federal", abbreviation: "FD")
Manufacturer.create(name: "GS Custom Bullets", abbreviation: "GS")
Manufacturer.create(name: "Hornady", abbreviation: "HDY")
