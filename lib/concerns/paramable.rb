# all #'s in modules need to be generic so their applicable to a variety of code
# child classes inheriting modules #'s 
module Paramable

  def to_param
    name.downcase.gsub(' ', '-')
  end

end