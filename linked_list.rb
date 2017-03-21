require './node'

class LinkedList
  attr_reader :head
  attr_accessor :append

  def initialize
    @head = nil
  end

  def append(data)
    @node = Node.new(data)
    return @node.data
  end

  def next_node
    @next_node = @node.next_node
  end
end
