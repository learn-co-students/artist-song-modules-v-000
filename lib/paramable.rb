module Paramable #instance method, use include 
  def to_param
    name.downcase.gsub(' ', '-')
  end

end
