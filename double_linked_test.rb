require 'minitest/autorun'
require 'minitest/pride'
require_relative 'double_linked'

class DoubleLinkedList < Minitest::Test
  attr_reader :list

  def setup
    @list = DoubleList.new
  end

  def test_it_inserts_a_head_onto_nil
    @list.append("Bob")
    assert_equal "Bob", @list.head.data
  end

  def test_it_has_a_next_node
    @list.append("Bob")
    @list.append("Mary")
    assert_equal "Mary", @list.head.next_node.data
  end

  def test_it_has_a_previous_node
    @list.append("Bob")
    @list.append("Mary")
    assert_equal "Bob", @list.head.data
    assert_equal "Mary", @list.head.next_node.data
    assert_equal "Bob", @list.head.next_node.previous_node.data
  end

  def test_it_has_a_previous_node_for_a_multiple_node_list
    skip
    @list.append("Bob")
    @list.append("Mary")
    @list.append("Steve")
    @list.append("Jones")
    assert_equal "Bob", @list.head.next_node.next_node.next_node.previous_node.previous_node.data
  end
end
