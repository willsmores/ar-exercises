require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue_all_stores = Store.sum(:annual_revenue)
puts @total_revenue_all_stores
@number_of_stores = Store.all.count
puts "Average store revenue: #{@total_revenue_all_stores/@number_of_stores}"
@number_of_stores_above_mill = Store.where(annual_revenue: 1000000...).count
puts "Number of stores with revenue 1M+: #{@number_of_stores_above_mill}"
