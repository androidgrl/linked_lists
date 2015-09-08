require_relative 'node'

class LinkedList
  attr_accessor :head, :count

  def initialize(head=nil)
    @head = head
    @count = 0
  end

  def append(data)
    if head.nil?
      @head = Node.new(data)
    else
      current_node = head
      searcher(current_node, data)
    end
  end

  def searcher(current_node, data)
    if current_node.next_node.nil?
      current_node.next_node = Node.new(data)
    else
      searcher(current_node.next_node, data)
    end
  end

  def count
    if head.nil?
      0
    else
      current_node = head
      counter(current_node)
    end
  end

  def counter(current_node)
    if current_node.next_node.nil?
      @count = 1
    else
      counter(current_node.next_node)
      @count += 1
    end
  end

  def tail
    if head.nil?
      nil
    else
      current_node = head
      tailer(current_node)
    end
  end

  def tailer(current_node)
    if current_node.next_node.nil?
      current_node
    else
      tailer(current_node.next_node)
    end
  end

  def pop
    if head.nil?
      nil
    else
      current_node = head
      popper(current_node)
    end
  end

  def popper(current_node)
    if current_node.next_node.next_node.nil?
      data = current_node.next_node.data
      current_node.next_node = nil
      data
    else
      popper(current_node.next_node)
    end
  end
end
