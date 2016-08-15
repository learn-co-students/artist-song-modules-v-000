
module Memorable
  module Class
    def reset_all
     self.all.clear
    end

    def count
      self.all.count
    end
  end

  module Instance
    def initialize
      self.class.all.push(self)
    end
  end

end
