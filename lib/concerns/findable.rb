module Findable

    def find_by_name(name)
      Song.songs.detect{|a| a.name == name}
    end

    def find_by_name(name)
      Artist.artists.detect{|a| a.name == name}
    end
end
