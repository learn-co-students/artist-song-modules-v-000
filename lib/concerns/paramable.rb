module Paramable
  #this module is a group of methods that can be used by both the song and artist class
  #the file needs to be 'required' in the environment file as well as extended into the
  #appropriate class

  def to_param
    name.downcase.gsub(" ","-")
  end



end
