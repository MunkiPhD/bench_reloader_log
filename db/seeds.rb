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
Manufacturer.create(name: "Hawk", abbreviation: "HWK")
Manufacturer.create(name: "Laser Cast", abbreviation: "LC")
Manufacturer.create(name: "Lyman", abbreviation: "LYM")
Manufacturer.create(name: "Montana Cast Bullets", abbreviation: "MCB")
Manufacturer.create(name: "Mount Baldy", abbreviation: "MTB")
Manufacturer.create(name: "Montana Gold", abbreviation: "MTG")
Manufacturer.create(name: "Nosler", abbreviation: "NOS")
Manufacturer.create(name: "Oregon Trail", abbreviation: "OT")
Manufacturer.create(name: "Rainier", abbreviation: "RAN")
Manufacturer.create(name: "Remington", abbreviation: "REM")
Manufacturer.create(name: "Rushmore", abbreviation: "RSH")
Manufacturer.create(name: "Sierra", abbreviation: "SIE")
Manufacturer.create(name: "SinterFire", abbreviation: "SF")
Manufacturer.create(name: "Speer", abbreviation: "SPR")
Manufacturer.create(name: "True Shoot", abbreviation: "TS")
Manufacturer.create(name: "West Coast", abbreviation: "WC")
Manufacturer.create(name: "Woodleigh", abbreviation: "WDL")
Manufacturer.create(name: "Winchester", abbreviation: "WIN")


puts "Finished seeding Manufacturer data"
