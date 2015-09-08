require 'minitest/autorun'
require 'minitest/pride'
require_relative 'josh_list'

class JoshListTest < Minitest::Test
  attr_reader :list

  def setup
    @list = JoshList.new
  end

  def test_it_can_add_onto_nothing
    list.append("Bob")
    assert_equal "Bob", list.head.data
  end

  def test_it_can_add_onto_one
    list.append("Bob")
    list.append("Mary")
    assert_equal "Mary", list.head.data
    assert_equal "Bob", list.head.next_node.data
  end

  def test_it_can_count_0
    assert_equal 0, list.count
  end

  def test_it_can_count_1
    list.append("Bob")
    assert_equal 1, list.count

  end
end


