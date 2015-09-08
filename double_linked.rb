class DoubleList
  attr_accessor :head

  def initialize(head=nil)
    @head = head
  end

  def append(data)
    node = Node.new(data)
    if head.nil?
      @head = node
    elsif head.next_node.nil?
      @head.next_node = node
      @head.next_node.previous_node = @head
    else
      current_node = head
      while current_node.next_node
        previous_node = current_node
        current_node = current_node.next_node
      end
      current_node.next_node = node
      current_node.previous_node = previous_node
    end
  end
end

class Node
  attr_accessor :data, :next_node, :previous_node

  def initialize(data, next_node=nil, previous_node=nil)
    @data = data
    @next_node = next_node
    @previous_node = previous_node
  end
end
