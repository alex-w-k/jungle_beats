require 'pry'
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

  def next_node
    next_node = @node.next_node
  end

  def count
    counter = 0
    traverser = @head
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

  binding.pry
end
