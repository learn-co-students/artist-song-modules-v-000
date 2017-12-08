module Paramable
  
  def to_param # instance method - calls downcase and gsub methods on name attr
    # replaces spaces with hyphen "-"
    name.downcase.gsub(' ', '-')
  end
  
end 