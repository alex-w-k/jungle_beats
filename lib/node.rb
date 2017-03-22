class Node

  attr_accessor :data, :next_node, :tail
  
  def initialize(value, next_node=nil)
    @data = value
    @next_node = next_node
  end

  def tail
    if self.next_node == nil
      self
    else
      self.next_node.tail
    end
  end
end
