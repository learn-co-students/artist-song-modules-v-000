module Paramable
  module InstanceMethods
    
  def to_param
    name.downcase.gsub(' ', '-')
  end
end#<--Instance Method End -->
end #<--module end-->