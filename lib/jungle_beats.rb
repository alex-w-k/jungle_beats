require './lib/node'
require './lib/linked_list'

class JungleBeat

  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    data.split(" ").each do |word|
      list.append(word)
    end
    list.to_string
  end

  def count
    list.count
  end

  def play
    `say -r 500 -v Boing #{list.to_string}`
  end
  

end

