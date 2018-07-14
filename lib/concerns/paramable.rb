module Paramable
module  All
  def to_param
      name.downcase.gsub(' ', '-')
  end
 end
end
