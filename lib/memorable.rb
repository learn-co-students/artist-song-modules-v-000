module Memorable
  module ForClass
    def reset_all
      self.all.clear
    end
    def count
      self.all.count
    end
    def find_by_name(name)
      self.all.detect{|one| one.name}
    end
  end
  module ForInstance
    def to_param
      name.downcase.gsub(' ', '-')
    end
  end
end