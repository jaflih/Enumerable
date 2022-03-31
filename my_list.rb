require_relative './my_enumerable'
class MyList
  include MyEnumerable

  def initialize(*list)
    @list =list
  end

  def each 
    @list.each{ |e| puts e}
  end
end

list = MyList.new(1, 2, 3, 4)
#list.each
puts list.all? {|e| e < 5}
# => true
puts list.all? {|e| e > 5}
# => false 