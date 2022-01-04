require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
def add_record(name,revenue,men_apparel,women_apparel)
  store = Store.new do |s|
    s.name = name
    s.annual_revenue = revenue
    s.mens_apparel = men_apparel
    s.womens_apparel = women_apparel
  end

  store.save
end

add_record("Burnaby", 300000, true, true)
add_record("Richmond", 126000, false, true)
add_record("Burnaby", 190000, true, false)

puts "# of records in Store is #{Store.all.count} records."
