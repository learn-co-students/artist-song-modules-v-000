
module Memorable

	def count
	    self.all.count
 	end

   	def reset_all
    	self.all.clear
 	end
end

class Artist
 extend Memorable
end


class Song
 extend Memorable
end