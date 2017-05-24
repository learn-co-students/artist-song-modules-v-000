module BasicFunctionality

  def track
    self.class.all << self
  end
  
end