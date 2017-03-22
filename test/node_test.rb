gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative './node'

class NodeTest < Minitest::Test
  def test_create_node 
    node = Node.new("plop")
    assert_equal node.data, "plop"
  end

  def test_next_node_nil
    node = Node.new("plop")
    assert_nil node.next_node 
  end 
end
