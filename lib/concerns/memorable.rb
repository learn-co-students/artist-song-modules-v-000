module Memorable

  module ClassMethods

    # I create the class methods below. We don't use self. in ClassMethods in the module. The classes inheriting the
    # methods know they're class methods.
    def reset_all
      all.clear
    end

    def count
      all.count
    end
  end #ClassMethods

  module InstanceMethods

    def initialize
      #We creeated this because both the Artist and Song classes had repition in their initialize instance method
      #looks like I have to have a self. in the instance methods unlike the Class methods.
      self.class.all << self
    end #initialize
  end #InstanceMethods

end #Memorable
