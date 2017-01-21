module Memorable 

  module ClassMethods


    def reset_all
      self.all.clear 
    end# of reset_all


    def count
      self.all.length
    end# of count

    
  end# of ClassMethods

end# of Memorable 