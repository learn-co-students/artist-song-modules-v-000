module Findable
  module ClassMethods

      def find_by_name(name)
        self.all.detect{|a| a.name == name} #a way to reference the collection of all of the instances of a class w/o being specific to certain ClassMethods
      end
    end
  end
