require_relative 'node'
#list only knows about the head
class LinkedList
  attr_reader :head

  def initialize(head=nil)
    @head = head
  end

  def append(data)
    node = Node.new(data)
    if head.nil?
      @head = node
    else
      current_node = head
      while current_node.next_node
        current_node = current_node.next_node
      end
      current_node.next_node = node
    end
  end

  def count
    if head.nil?
      0
    else
      count = 1
      current_node = head
      while current_node.next_node
        current_node = current_node.next_node
        count += 1
      end
      count
    end
  end

  def tail
    if head.nil?
      nil
    else
      current_node = head
      while current_node.next_node
        current_node = current_node.next_node
      end
      current_node
    end
  end

  def pop
    if head.nil?
      nil
    else
      current_node = head
      while current_node.next_node.next_node
        current_node = current_node.next_node
      end
      last = current_node.next_node.data
      current_node.next_node = nil
      last
    end
  end
end
