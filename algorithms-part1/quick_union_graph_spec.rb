require_relative 'quick_union_graph'

describe QuickUnionGraph do
  it 'has to be the correct number of vertices' do
    number_of_vertices = 4
    expect(described_class.new(number_of_vertices).connections_array.size).to eq number_of_vertices
  end

  it 'connect to the two part of the graph' do
    graph = described_class.new(5)

    expect(graph.connected?(1, 4)).to be false

    graph.union!(1, 4)
    expect(graph.connected?(1, 4)).to be true
  end
end
