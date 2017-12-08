module Findable 
 
  def find_by_name(name) # class method - goes through the artists array and returns the name of the artist
    self.all.detect{|a| a.name == name}
  end
  
end 