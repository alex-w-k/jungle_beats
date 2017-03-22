gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list.rb'

class LinkedListTest < Minitest::Test

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

  def test_linked_list_count
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
  end

  def test_linked_list_to_string
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.to_string
  end
  
  def test_linked_list_append_two_nodes
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
    assert_nil list.head.next_node
    assert_equal "deep", list.append("deep")
    refute_nil list.head.next_node
  end

  def test_linked_list_count_two_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    assert_equal 2, list.count
  end

  def test_linked_list_to_string_two_nodes
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    refute_nil list.head.next_node
    assert_equal "doop deep", list.to_string
  end

  def test_create_store_and_list_three_nodes
    list = LinkedList.new
    list.append("doop")
    assert_equal 1, list.count
    list.append("deep")
    assert_equal 2, list.count
    list.append("ditt")
    assert_equal 3, list.count
    assert_equal "doop deep ditt", list.to_string
  end

end
