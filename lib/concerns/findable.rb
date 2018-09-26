module Findable
  attr_accessor :name
  
  def find_by_name(name)
     all.detect{|a| a.name == name}
  end
  
end