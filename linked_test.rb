require 'minitest/autorun'
require 'minitest/pride'
require_relative 'recursive_list'

class LinkedlistTest < Minitest::Test
  attr_reader :list

  def setup
    @list = LinkedList.new
  end

  def test_it_inserts_onto_the_head_when_the_head_is_nil
    list.append("Bob")
    assert_equal "Bob", list.head.data
  end

  def test_it_can_append_onto_one_node
    list.append("Bob")
    list.append("Jerry")
    assert_equal "Jerry", list.head.next_node.data
  end

  def test_it_can_append_onto_two_nodes
    list.append("Bob")
    list.append("Jerry")
    list.append("Sam")
    assert_equal "Sam", list.head.next_node.next_node.data
  end

  def test_it_can_append_onto_three_nodes
    list.append("Bob")
    list.append("Jerry")
    list.append("Sam")
    list.append("Fred")
    assert_equal "Fred", list.head.next_node.next_node.next_node.data
  end

  def test_it_can_count_nothing
    assert_equal 0, list.count
  end

  def test_it_can_count_1
    list.append("Bob")
    assert_equal 1, list.count
  end

  def test_it_can_count_4
    list.append("Bob")
    list.append("Jerry")
    list.append("Sam")
    list.append("Fred")
    assert_equal 4, list.count
  end

  def test_it_can_count_2
    list.append("Bob")
    list.append("Jerry")
    assert_equal 2, list.count
  end


  def test_tail_can_return_the_last_node
    list.append("Bob")
    list.append("Jerry")
    list.append("Sam")
    list.append("Fred")
    assert_equal "Fred", list.tail.data
  end

  def test_it_can_pop_the_last_node
    list2 = LinkedList.new
    list2.append("Bob")
    list2.append("Jerry")
    list2.append("Sam")
    list2.append("Fred")
    assert_equal 4, list2.count
    assert_equal "Fred", list2.pop
    assert_equal 3, list2.count
  end
end
