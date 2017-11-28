module Memorable
  module ClassMethods

  def reset_all     #Remove self from the Class method
    self.all.clear  #Use the more general code than specific code
  end               #self.all.clear > @@songs.clear

  def count         #Remove self from the Class method
    self.all.count  #Use the more general code than specific code
  end               #self.all.count > @@artists.count
  end

  module InstanceMethods
   def initialize
     self.class.all << self
   end
  end
end
