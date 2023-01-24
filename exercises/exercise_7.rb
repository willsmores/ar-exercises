require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true }
  validates :hourly_rate, numericality: { in: 40..200 }
  validates :store_id, presence: true
end

class Store
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true }
  validates :annual_revenue, numericality: { greater_than: 0 }
end

puts "Please enter a new Store name:"
@userInput = $stdin.gets.chomp

@new_store = Store.create(:name => @userInput)

if @new_store.errors.any?
  @new_store.errors.each do |error|
    attribute = error.attribute
    message = error.message
    puts "#{attribute} #{message}"
  end
end