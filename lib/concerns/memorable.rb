
# in order to save time i can write some code that will be used by multiple classes in one place
# note that we dont use self in modules 


     module Memorable
       module ClassMethods # i am definining class methods
         def reset_all
           self.all.clear # both artist and song can delete everything
         end

         def count
           self.all.count #both artist and song can count how many of themselves they have
         end
       end

       module InstanceMethods
         def initialize
           self.class.all << self
         end
       end
     end
