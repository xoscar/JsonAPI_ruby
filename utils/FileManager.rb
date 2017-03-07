# libs
require 'json'

class FileManager
	attr_accessor :data

	def initialize(fileName, data)
		@fileName = fileName
		@data = data
	end

	def save()
		File.write(@fileName, @data.to_json)
	end

	# statis methods
	def FileManager.read(fileName)
		self.new(fileName, JSON.parse(File.read(fileName)))
	end
end