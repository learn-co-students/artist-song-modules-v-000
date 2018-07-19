module Paramable
  module InstanceMethods

    def to_param
    name.downcase.gsub(' ', '-')
    end

  end #end of the InstanceMethods module
end #end of the Paramable module
