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

  def 🤑
    `say -r 500 -v Boing #{list.to_string}`
  end
  
  def prepend(data)
    data = data.split(" ").reverse
    data.each do |word|
      list.prepend(word)
    end
    list.to_string
  end

  def all
    list.to_string
  end

  def valid?(word)
    valid_words = "tee dee deep bop boop la na ditt doo shu hoo woo"
    if valid_words.include?(word)
      true
    else
      false
    end
  end


end

