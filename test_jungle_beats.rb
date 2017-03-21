gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'node'
require_relative 'linked_list'

class JungleBeats < Minitest::Test
  def test_create_node 
    node = Node.new("plop")
    assert_equal node.data, "plop"
  end

  def test_next_node_nil
    node = Node.new("plop")
    assert_nil node.next_node 
  end 

  def test_linked_list_init
    list = LinkedList.new
    assert_nil list.head
  end

  def test_linked_list_append
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.append("doop")
  end

  def test_linked_list_next_node
    list = LinkedList.new
    list.append("doop")
    assert_nil list.head.next_node
  end

end
