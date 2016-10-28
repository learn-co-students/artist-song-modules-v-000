module Memorable
    module ClassMeths
        def reset_all
          all.clear
        end

        def count
          all.count
        end
    end

    module Instances
        def initialize
            self.class.all << self
        end
    end
end
