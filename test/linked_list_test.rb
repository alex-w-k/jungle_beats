gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list.rb'

class LinkedListTest < Minitest::Test

  def test_linked_list_init
    list = LinkedList.new
    assert list
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

  def test_prepend
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    assert_equal 2, list.count
    assert_equal "plop suu", list.to_string
    list.prepend("dop")
    assert_equal 3, list.count
    assert_equal "dop plop suu", list.to_string
  end

  def test_insert
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    assert_equal 2, list.count
    assert_equal "plop suu", list.to_string
    list.prepend("dop")
    assert_equal 3, list.count
    assert_equal "dop plop suu", list.to_string
    list.insert(1, "woo")
    assert_equal "dop woo plop suu", list.to_string
  end

  def test_find
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "shi", list.find(2, 1)
    assert_equal "woo shi shu", list.find(1, 3)
  end

  def test_include?
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal 5, list.count
    assert list.includes?("deep")
    refute list.includes?("dep")
  end

  def test_pop_one
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal 5, list.count
    assert_equal "blop", list.pop
    assert_equal 4, list.count

  end
  def test_pop_two
    list = LinkedList.new
    list.append("doop")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.pop
    assert_equal "shu", list.pop
    assert_equal 3, list.count
    assert_equal "doop woo shi", list.to_string
  end

  def test_go_to_node
    list = LinkedList.new
    list.append("doop")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "doop", list.go_to_node(0).data
  end

  def test_test
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.go_to_node(0).data
  end


end
