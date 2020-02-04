class QuickUnionGraph
  attr_reader :connections_array

  def initialize(n)
    # N vertices are in the graph
    
    @connections_array = []
    n.times { |i| @connections_array[i] = i }
  end

  def union!(p, q)
    @connections_array[p] = q
  end

  def connected?(p, q)
    root(p) == root(q)
  end

  private

  def root(p)
    p_value = @connections_array[p]

    if p_value == p
      return p
    else
      root(p_value)
    end
  end
end
