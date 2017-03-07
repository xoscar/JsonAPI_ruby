require_relative "models/Car"

puts "Save new car"

puts "Id:"
id = gets.chomp

puts "Color:"
color = gets.chomp

puts "Model:"
model = gets.chomp

puts "Owner:"
owner = gets.chomp

car = Car.new(id, color, model, owner)

puts "Car to be added: \n\t#{car.to_s}"

car.save()

puts "Car added successfully"
