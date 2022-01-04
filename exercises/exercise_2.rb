require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1)
@store2 = Store.where('id > 1').limit(1).order('id asc')
@store1.name = 'English Bay'
@store1.save
