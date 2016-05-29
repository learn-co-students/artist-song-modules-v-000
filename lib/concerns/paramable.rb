module Paramable

  module InstanceMethods


    #Typically used for turning something such as a name into a string to be used for URL, e.g., Facebook profile page URL

      def to_param
        name.downcase.gsub(' ', '-')
      end

  end

end