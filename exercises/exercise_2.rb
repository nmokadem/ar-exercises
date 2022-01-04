require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

class Exercise_2
  attr_accessor :store1, :store2

  def initialize
    #@store1 = Store.first
    @store1 = Store.find_by(id: 1)
    @store2 = Store.where('id > 1').limit(1).order('id asc')
    puts @store1
  end

  def update
    @store1.name = 'English Bay'
    @store1.save
  end

end

s = Exercise_2.new.update

puts "#{s.store1}"
puts "#{s.store2}"
