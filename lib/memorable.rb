# require './lib/artist.rb'
# require './lib/song.rb'
module Memorable
  module ClassMethods
    def count
      self.all.count
    end
    def reset_all
      self.all.clear
    end
    def find_by_name(name)
      self.all.detect {|i| i.name}
    end
  end
end