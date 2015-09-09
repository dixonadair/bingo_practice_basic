# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# board3 = Bingoboard.new
# board3.save
# board4 = Bingoboard.new
# board4.save

# Bingoboard.create
# Bingoboard.create

# Bingoboard.create(test_name: "Hello")
# Bingoboard.create(test_name: "Goodbye")

Bingoboard.create(tags: Array.new(5) { Array.new(5) { |i| i = rand(100)+1 } } )
Bingoboard.create(tags: Array.new(5) { Array.new(5) { |i| i = rand(100)+1 } } )