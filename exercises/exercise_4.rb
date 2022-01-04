require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

add_record("Surrey",    224000, false, true)
add_record("Whistler", 1900000, true, false)
add_record("Yaletown",  430000, true, true)

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each { |s| puts "#{s.name} #{s.annual_revenue}" }

@womens_stores =  Store.where("womens_apparel ? AND annual_revenue < ?",true,  1000000)
