module Findable
  module ClassMethods

  def find_by_name
    self.all.detect{|o| o.name}
  end
end #end of the ClassMethods module
end #end of the Findable module
