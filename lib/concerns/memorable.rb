module Memorable
  module ClassMethods
    @@songs = []
    @@artists = []

    def reset_all
      all.clear
    end

    def count
      all.count
    end

  end

end
