require_relative '../utils/FileManager'

class Base
	def initialize(fileName)
		@fileManager = FileManager.read(fileName)
	end

	def to_hash()
		{}
	end

	def save()
		selfHash = self.to_hash()

		@fileManager.data = @fileManager.data.select { |item| item["id"] != selfHash["id"] }

		@fileManager.data.push(selfHash)
		@fileManager.save()
	end
end