
module Memorable
	def self.find_by_name(name)
		self.all.detect {|x| x.name == name}
	end
	def self.count
		self.all.count
	end
	def self.reset_all
		self.all.clear
	end
end