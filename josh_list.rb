require_relative 'node'
class JoshList
  attr_reader :head

  def initialize(head=nil)
    @head = head
  end

  def append(data)
    node = Node.new(data, @head)
    @head = node
  end

  def count
    if head.nil?
      0
    else

    end
  end
end
