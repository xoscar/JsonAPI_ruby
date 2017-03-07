class Client < Base
	attr_accessor :id, :cars

	def initialize(id, name, age, nationallity, cars)
		@name = name
		@age = age
		@nationallity = nationallity
		@cars = cars
		@id = id
	end

	def to_s()
		"Hello I\'m #@name, my age is: #@age, I\'m #@nationallity and I have #{@cars.length} car#{@cars.length > 1 ? "s" : ""}."
	end

	def to_hash()
		{
			"id" => @id,
			"age" => @age,
			"nationallity" => @nationallity,
			"name" => @name,
		}
	end

	def printInfo()
		puts "#{self.to_s}\n\n\t#{@cars.each { |car| car.to_s }.join("\n\t")}"
	end
end