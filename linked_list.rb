require './node'

class LinkedList
  attr_reader :head
  attr_accessor :append

  def initialize
    @head = nil
  end

  def append(data)
    head = Node.new(data)
  end
end
