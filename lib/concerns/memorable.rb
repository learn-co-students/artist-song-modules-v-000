module Memorable
  module Class
    def reset_all
      all.clear
    end

    def count
      all.count
    end
  end

  module Instance
    def initialize
      self.class.all << self
    end
  end
end
