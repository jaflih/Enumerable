module MyEnumerable

  # The method returns true if the block never returns false or nil. 
  def all?
    @list.each do |e| 
      if(!yield e) 
        return false 
      end
    end
    return true
  end
end