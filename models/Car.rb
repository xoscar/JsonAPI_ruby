require_relative 'Base'

class Car < Base
	attr_accessor :owner
	@@fileName = 'data/cars.json'

	def initialize(id, color, model, owner)
		super(@@fileName)

		@id = id
		@color = color
		@model = model
		@owner_id = owner
	end

	def to_s()
		"Id: #{@id}, model: #{@model}, color: #{@color}"
	end

	def to_hash()
		{
			"id" => Integer(@id),
			"color" => @color,
			"model" => @model,
			"owner" => Integer(@owner_id),
		}
	end
end