module Memorable
  def reset_all
    #using self.all in place of @@artists or @@songs as output of self.all in each of..
    #the Class is @@artists or @@songs
    self.all.clear
  end

  def count
    #using self.all in place of @@artists or @@songs as output of self.all in each of..
    #the Class is @@artists or @@songs
    self.all.count
  end
end
