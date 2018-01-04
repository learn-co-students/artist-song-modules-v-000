module Findable

  module ClassMethods

    # I define the class variable in the module so the classes that inherite the code can use the find_by_name method
    # and store the data in a class variable.
    @@class_variable = []

    def find_by_name(name)
      @@class_variable.detect{|a| a.name == name}
    end
  end

end
