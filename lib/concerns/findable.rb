
module Findable
  module ClassMethods
    def find_by_name(name)           #reference the collection of all of the instances of a class,
      self.all.detect{|o| o.name}    #without specifically referencing class variables
  end                                #that are only defined in certain classes
end
end
