require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jeff", last_name: "Hurst", hourly_rate: 75)
@store2.employees.create(first_name: "Alan", last_name: "Shearer", hourly_rate: 260)
@store2.employees.create(first_name: "Ellie", last_name: "Williams", hourly_rate: 120)