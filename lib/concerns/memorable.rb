module Memorable
  module ClassMethods
    def self.find_by_name(name)
      self.all.detect{|a| a.name}
    end
    
    def self.count
      self.all.count
    end

    def self.reset_all
      self.all.clear
    end
  end
end