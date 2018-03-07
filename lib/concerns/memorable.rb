module Memorable
  module InstanceMethods
    def reset_all
     songs.clear
    end

    def count
      artists.count
    end
  end
  module ClassMethods

    def count
          self.all.count
        end

    def reset_all
          self.all.clear
        end
end
end
