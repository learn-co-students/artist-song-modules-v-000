module Paramable
  module InstanceModules
    def to_param
    name.downcase.gsub(' ', '-')
    end
  end

end