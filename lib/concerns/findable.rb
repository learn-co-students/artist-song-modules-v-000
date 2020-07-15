require 'pry'

module Findable

  module ClassMethods
    def find_by_name(name)
      self.all.each do |a|
        if a.name == name
          return a
        end
      end
    end
  end
  
end