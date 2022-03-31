module MyEnumerable
  # The method returns true if the block never returns false or nil.
  def all?
    @list.each do |e|
      return false unless yield e
    end
    true
  end

  def any?
    @list.each do |e|
      return true if yield e
    end
    false
  end
end
