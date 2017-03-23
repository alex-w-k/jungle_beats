gem 'minitest', '~>5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'
require './lib/jungle_beats'

class JungleBeatsTest < Minitest::Test

  def test_does_class_init
    jb = JungleBeat.new
    assert jb
    assert jb.list
    refute jb.list.head
  end

  def test_jb_append
    jb = JungleBeat.new
    assert_equal "deep doo ditt", jb.append("deep doo ditt")
    assert_equal "deep", jb.list.head.data
    assert_equal "doo", jb.list.head.next_node.data
    jb.append("woo hoo shu")
    assert_equal 6, jb.count
  end

  def test_play
    jb = JungleBeat.new
    jb.append("deep doo ditt woo hoo shu")
    assert jb.play
  end
  

end

