module Memorable
  module ClassMethods

    def reset_all
      self.all.clear
    end

    def count
      self.all.count
    end

  end

  module InstanceMethods #Did it both ways, here and in paramable

    def to_param
      self.name.downcase.gsub(' ', '-')
    end

  end

end
