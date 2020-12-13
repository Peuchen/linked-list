class Node
  attr_accessor :value
  def value
    @value = nil
  end

  def next_node
    @next_node = nil
  end
end

class LinkedList
  def append(value)
    node = Node.new
    node.value = value
  end
end

list = LinkedList.new
puts list
list.append("test")