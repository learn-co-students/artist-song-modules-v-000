module Paramable
  module InstanceClass
    def to_param
      name.downcase.gsub(' ', '-')
    end
  end 
end
