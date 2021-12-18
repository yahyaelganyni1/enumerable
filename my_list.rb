require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    i = 0
    while i < @list.length
      yield @list[i]
      i += 1
    end
  end
end

# Create our list
# irb> list = MyList.new(1, 2, 3, 4)
# => <MyList: @list=[1, 2, 3, 4]>
