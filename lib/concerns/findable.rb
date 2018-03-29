module Findable

  def find_by_name(name)
    self.all.find{|artist_or_song| artist_or_song.name == name}
  end

end
