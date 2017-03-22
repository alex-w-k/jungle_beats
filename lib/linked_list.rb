require './lib/node'

class LinkedList
  attr_reader :head
  attr_accessor :append

  def initialize
    @head = nil
  end

  def append(data)
    @node = Node.new(data)
    if @head == nil
      @head = @node
    else
      @head.next_node = @node
    end

    @node.data
  end

  def next_node
    next_node = @node.next_node
  end

  def count
    if @head == nil
      0
    elsif @head.next_node == nil
      1
    elsif @head.next_node.next_node == nil
      2
    end
  end

  def to_string
    if @head.next_node == nil
     string = @head.data
    else
      string = @head.data + " " + @head.next_node.data
    end

  end

end
