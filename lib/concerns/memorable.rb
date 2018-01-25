require 'pry'
module Memorable
  @@artists = []
  @@songs = []

  def reset_all
    @@artists.clear
  end

  def count
    @@artists.count
  end
=begin
  def reset_all
    @@songs.clear
  end

  def count
    @@songs.count
  end
=end
end
