module Findable
  #This method will be used as a class method
  module ClassMethods
    def find_by_name(name)
      #.detect brings back whatever in the code block evaluates to true

      #self.all reference the collection of all of the instances of a class,
       #without specifically referencing class variables
       #that are only defined in certain classes
       #Need this becuase we cant call @@variable_name in the module
      self.all.detect{|a| a.name == name}
    end
  end
end
