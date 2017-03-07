require_relative "models/Car"
require_relative "models/Client"

# load data
clients = FileManager.read('data/clients.json')
cars = FileManager.read('data/cars.json')

clients = clients.data.map do |client|
	client_cars = cars.data.select { |car| car["owner"] == client["id"] }
	client = Client.new(client["id"], client["name"], client["age"], client["nationallity"], client_cars.map { |car| Car.new(car["id"], car["color"], car["model"], client["id"]) })
end

clients.each do |client|
	puts client.printInfo
end
