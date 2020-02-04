class QuickFindGraph
  attr_reader :connections_array

  def initialize(n)
    # N vertices are in the graph
    
    @connections_array = []
    n.times { |i| @connections_array[i] = i }
  end

  def union!(p, q)
    from_value = @connections_array[p]
    to_value = @connections_array[q]
    change_every_value(from_value, to_value)
  end

  def connected?(p, q)
    @connections_array[p] == @connections_array[q]
  end

  private

  def change_every_value(from, to)
    @connections_array.map!{ |b| b==from ? b=to : b }
  end
end
