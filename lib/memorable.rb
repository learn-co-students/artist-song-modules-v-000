module Memorable

  def reset_all
    self.all.clear
  end

  def count
    self.all.count
  end

  def find_by_name(name)
    self.all.detect {|a| a.name }
  end
end


=begin
  def self.find_by_name(name)
    @@songs.detect{|a| a.name}
  end
=end

=begin
  def self.find_by_name(name)
    @@artists.detect{|a| a.name}
  end
=end