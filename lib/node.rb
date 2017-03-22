class Node

  attr_accessor :data, :next_node, :tail
  
  def initialize(value)
    @data = value
    @next_node = nil
  end

  def tail
    if self.next_node == nil
      self
    else
      self.next_node.tail
    end
  end
end
