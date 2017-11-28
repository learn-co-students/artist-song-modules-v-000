module Findable
  def find_by_name(name)
    #using self.all in place of @@artists or @@songs as output of self.all in each of..
    #the Class is @@artists or @@songs
    self.all.detect{|a| a.name == name}
  end
end
