require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
sum_revenue = Store.sum("annual_revenue")
puts sum_revenue

average_revenue = Store.average("annual_revenue")
puts average_revenue

count_stores = Store.where("annual_revenue > 1000000").count
puts count_stores 
