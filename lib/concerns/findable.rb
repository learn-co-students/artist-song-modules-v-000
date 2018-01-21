module Findable
  
  module ClassMethods
    def find_by_name(name)
      self.detect {|a| a.name == name}
    end
  end
  
end

=begin
 It is a common practice to create a folder called concerns that holds modules that will be used across classes in an object oriented Ruby project.
 
 Okay, back to your regularly scheduled programming: <-- lol how clever
 
 Is there a way to reference the collection of all of the instances of a class, without specifically referencing class variables that are only defined in certain classes?
SELF
=end