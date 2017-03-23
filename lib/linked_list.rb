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
      head.tail.next_node = @node
      head.tail.data
    end

    @node.data
  end

  def prepend(data)
    temp = Node.new(data, @head)
    @head = temp
  end

  def next_node
    next_node = node.next_node
  end

  def count
    counter = 0
    traverser = head
    until traverser.nil?
      counter += 1
      traverser = traverser.next_node
    end
    counter
  end

  def to_string
    string = ""
    string << @head.data
    traverser = @head.next_node
    until traverser.nil?
      string << " " + traverser.data
      traverser = traverser.next_node
    end
    string
  end

  def insert(pos, data)
    current = @head
    (pos - 1).times do
      current = current.next_node
    end
    temp = Node.new(data, current.next_node)
    current.next_node = temp
  end

  def find(pos, amount)
    current = head
    list = ""
    pos.times do
      current = current.next_node
    end
    amount.times do
      if list == ""
        list << current.data
      else
        list << " " + current.data
      end
      current = current.next_node
    end
    list
  end

  def includes?(string)
    if to_string.include?(string)
      true
    else
      false
    end
    
  end

end
