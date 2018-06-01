module Memorable
  #this module is a group of methods that can be used by both the song and artist class
  #the file needs to be 'required' in the environment file as well as extended into the
  #appropriate class


  def reset_all
    self.all.clear
  end

  def count
    self.all.length
  end

end
