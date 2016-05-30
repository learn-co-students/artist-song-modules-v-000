module Memorable

	def self.find_by_name(name)
		@@all.detect{|a| a.name}
	end
	
	def self.reset_all
		self.all.clear
    end

	def self.count
		@@all.count
	end
	
end	
